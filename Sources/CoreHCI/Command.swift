
//
//  Command.swift
//  hcitoolPackageDescription
//
//  Created by Marco Estrella on 3/26/18.
//

import Foundation
import Bluetooth

public enum CommandType: String {
    
    // Low Energy Scan
    case lowEnergyScan = "lescan"
    
    // iBeacon
    case iBeacon = "ibeacon"
    
    // Reads the Bluetooth controller's local name.
    case readLocalName = "readname"
    
    // Write the Bluetooth controller's local name.
    case writeLocalName = "writename"
    
    // Inquiry Mode is used to discover other nearby BR/EDR Controllers.
    case inquiry = "inquiry"
    
    // Make the BR/EDR Controller to stop the current Inquiry if the BR/EDR Controller is in Inquiry Mode.
    case inquiryCancel = "inquirycancel"
    
    // Used to configure the BR/EDR Con- troller to enter the Periodic Inquiry Mode that performs an automatic Inquiry.
    case periodicInquiryMode = "periodicinquirymode"
    
    // Used to end the Periodic Inquiry mode when the local device is in Periodic Inquiry Mode
    case exitPeriodicInquiryMode = "exitperiodicinquirymode"
    
    // Causes the Link Manager to create a connection to the remote device with the BD_ADDR specified by the command parameters
    case createConnection = "classiccreateconnection"
    
    // Used to request cancellation of the ongoing connection creation process
    case createConnectionCancel = "cancelconnection"
    
    // Used to terminate an existing connection. The Connection_Handle command parameter indicates which connection is to be disconnected.
    case disconnect = "disconnect"
    
    // Used to obtain the user-friendly name of another BR/EDR Controller
    case remoteNameRequest = "remotenamerequest"
    
    // Used to read values regarding the maximum permitted data transfers over the Controller and the data buffering available in the Controller.
    case readDataBlockSize = "readdatablocksize"
    
    // Used to enable and disable the link level encryption.
    case setConnectionEncryption = "setconnectionencryption"
    
    // Used to indicate the completion of the process of the Link Manager
    case readRemoteSupportedFeatures = "readremotesupportedfeatures"
    
    // Returns the requested page of the extended LMP features for the remote device identified by the specified Connection_Handle
    case readRemoteExtendedFeatures = "readremoteextendedfeatures"
    
    // This command will obtain the values for the version information for the remote device identified by the Connection_Handle parameter
    case readRemoteVersionInformation = "readremoteversioninformation"
    
    // Set the Bluetooth controller's random address
    case lowEnergySetRandomAddress = "setrandomaddress"
    
    // Clear the White List stored in the Controller.
    case lowEnergyClearWhiteList = "clearwhitelist"
    
    //  Cancel the LE_Create_Connection or LE_Extended_Create_Connection commands.
    case lowEnergyCreateConnectionCancel = "createconnectioncancel"
    
    // Requests the list of the supported LE features for the Controller.
    case lowEnergyReadLocalSupportedFeatures = "readlocalsupportedfeatures"
    
    // Controls which LE events are generated by the HCI for the Host.
    case lowEnergySetEventMask = "seteventmask"
    
    // Reads the maximum size of the data portion of HCI LE ACL Data Packets sent from the Host to the Controller.
    case lowEnergyReadBufferSize = "readbuffersize"
    
    // Returns the current Channel_Map for the specified Connection_Handle.
    case lowEnergyReadChannelMap = "readchannelmap"
    
    //  Adds a single device to the White List stored in the Controller.
    case lowEnergyAddDeviceToWhiteList = "adddevicetowhitelist"
    
    //  Removes a single device from the White List stored in the Controller.
    case lowEnergyRemoveDeviceFromWhiteList = "removedevicefromwhitelist"
    
    // Reads the total number of White List entries that can be stored in the Controller.
    case lowEnergyReadWhiteListSize = "readwhitelistsize"
    
    // Used by the Host to read the transmit power level used for LE advertising channel packets.
    case lowEnergyReadAdvertisingChannelTxPower = "readadvertisingchanneltxpower"
    
    // Requests the Controller to generate 8 octets of random data to be sent to the Host.
    case lowEnergyRand = "rand"
    
    // Used by the Host to set the advertising parameters.
    case lowEnergySetAdvertisingParameters = "setadvertisingparameters"
    
    // Used to change the Link Layer connection parameters of a connection.
    case lowEnergyConnectionUpdate = "connectionupdate"
    
    // Used to request the Controller to start or stop advertising.
    case lowEnergySetAdvertisingEnable = "setadvertisingenable"
    
    // Used to create a Link Layer connection to a connectable advertiser.
    case lowEnergyCreateConnection = "createconnection"
    
    // Requests the features used on the connection and the features supported by the remote device.
    case lowEnergyReadRemoteFeatures = "readremotefeatures"
    
    // Encrypts the Plaintext Data
    case lowEnergyEncrypt   = "encrypt"
    
    // Replies to an LE Long Term Key Request event from the Controller if the Host cannot provide a Long Term Key for this Connection_Handle
    case lowEnergyLongTermKeyRequestNegativeReply = "longtermkeyrequestnegativereply"
    
    // Replies to an LE Long Term Key Request event from the Controller, and specifies the Long_Term_Key parameter that shall be used for this Connection_Handle.
    case lowEnergyLongTermKeyRequestReply = "longtermkeyrequestreply"
    
    // Used to authenticate the given encryption key associated with the remote device specified by the Connection_Handle, and once authenticated will encrypt the connection.
    case lowEnergyStartEncryption = "startencryption"
    
    // Reads the states and state combinations that the link layer supports.
    case lowEnergyReadSupportedStates = "readsupportedstates"
    
    // Starts a test where the DUT receives test reference packets at a fixed interval.
    case lowEnergyReceiverTest = "receivertest"
    
    // Starts a test where the DUT generates test reference packets at a fixed interval.
    case lowEnergyTransmitterTest = "transmittertest"
    
    // Stops any test which is in progress.
    case lowEnergyTestEnd = "testend"
    
    // Adds one device to the list of address translations used to resolve Resolvable Private Addresses in the Controller.
    case lowEnergyAddDeviceToResolvingList = "adddevicetoresolvinglist"
    
    // Removes one device from the list of address translations used to resolve Resolvable Private Addresses in the Controller.
    case lowEnergyRemoveDeviceFromResolvingList = "removedevicefromresolvinglist"
    
    // Allows the Host to suggest maximum transmission packet size and maximum packet transmission time
    case lowEnergySetDataLength = "setdatalength"
    
    // Allows the Host to read the Host's suggested values (SuggestedMaxTxOctets and SuggestedMaxTxTime) for the Controller's maximum transmitted number of payload octets and maximum packet transmission time to be used for new connections
    case lowEnergyReadSuggestedDefaultDataLength = "readsuggesteddefaultdatalength"
    
    // Allows the Host to specify its suggested values for the Controller's maximum transmission number of payload octets and maximum packet transmission time to be used for new connections.
    case lowEnergyWriteSuggestedDefaultDataLength = "writesuggesteddefaultdatalength"
    
    // Used to return the local P-256 public key from the Controller
    case lowEnergyReadLocalP256PublicKey = "readlocalp256publickey"
    
    // Used to remove all devices from the list of address translations used to resolve Resolvable Private Addresses in the Controller.
    case lowEnergyClearResolvingList = "clearresolvinglist"
    
    // Used to read the total number of address translation entries in the resolving list that can be stored in the Controller
    case lowEnergyReadResolvingListSize = "readresolvinglistsize"
    
    // Used to get the current peer Resolvable Private Address being used for the corresponding peer Public and Random (static) Identity Address
    case lowEnergyReadPeerResolvableAddress = "readpeerresolvableaddress"
}

public enum Command {
    
    case iBeacon(iBeaconCommand)
    
    // Reads the Bluetooth controller's local name.
    case readLocalName
    
    // Write the Bluetooth controller's local name.
    case writeLocalName(WriteLocalNameCommand)
    
    // Inquiry Mode is used to discover other nearby BR/EDR Controllers.
    case inquiry(InquiryCommand)
    
    // Used to end the Periodic Inquiry mode when the local device is in Periodic Inquiry Mode
    case exitPeriodicInquiryMode
    
    // Make the BR/EDR Controller to stop the current Inquiry if the BR/EDR Controller is in Inquiry Mode.
    case inquiryCancel
    
    // Used to configure the BR/EDR Con- troller to enter the Periodic Inquiry Mode that performs an automatic Inquiry.
    case periodicInquiryMode(PeriodicInquiryModeCommand)
    
    // Causes the Link Manager to create a connection to the remote device with the BD_ADDR specified by the command parameters
    case createConnection(CreateConnectionCommand)
    
    // Used to request cancellation of the ongoing connection creation process
    case createConnectionCancel(CreateConnectionCancelCommand)
    
    // Used to terminate an existing connection. The Connection_Handle command parameter indicates which connection is to be disconnected.
    case disconnect(DisconnectCommand)
    
    // Used to obtain the user-friendly name of another BR/EDR Controller
    case remoteNameRequest(RequestRemoteNameCommand)
    
    // Used to read values regarding the maximum permitted data transfers over the Controller and the data buffering available in the Controller.
    case readDataBlockSize
    
    // Used to enable and disable the link level encryption.
    case setConnectionEncryption(SetConnectionEncryptionCommand)
    
    // Used to indicate the completion of the process of the Link Manager
    case readRemoteSupportedFeatures(ReadRemoteSupportedFeaturesCommand)
    
    // Returns the requested page of the extended LMP features for the remote device identified by the specified Connection_Handle
    case readRemoteExtendedFeatures(ReadRemoteExtendedFeaturesCommand)
    
    // This command will obtain the values for the version information for the remote device identified by the Connection_Handle parameter
    case readRemoteVersionInformation(ReadRemoteVersionInformationCommand)
    
    // Set the Bluetooth controller's random address
    case lowEnergySetRandomAddress(LESetRandomAddressCommand)
    
    // Low Energy Scan
    case lowEnergyScan(LEScanCommand)
    
    // Clear the White List stored in the Controller.
    case lowEnergyClearWhiteList
    
    //  Cancel the LE_Create_Connection or LE_Extended_Create_Connection commands.
    case lowEnergyCreateConnectionCancel
    
    // Requests the list of the supported LE features for the Controller.
    case lowEnergyReadLocalSupportedFeatures
    
    // Controls which LE events are generated by the HCI for the Host.
    case lowEnergySetEventMask(LESetEventMaskCommand)
    
    // Reads the maximum size of the data portion of HCI LE ACL Data Packets sent from the Host to the Controller.
    case lowEnergyReadBufferSize
    
    // Returns the current Channel_Map for the specified Connection_Handle.
    case lowEnergyReadChannelMap(LEReadChannelMapCommand)
    
    //  Adds a single device to the White List stored in the Controller.
    case lowEnergyAddDeviceToWhiteList(LEAddDeviceToWhiteListCommand)
    
    //  Removes a single device from the White List stored in the Controller.
    case lowEnergyRemoveDeviceFromWhiteList(LERemoveDeviceFromWhiteListCommand)
    
    // Reads the total number of White List entries that can be stored in the Controller.
    case lowEnergyReadWhiteListSize
    
    //  Used by the Host to read the transmit power level used for LE advertising channel packets.
    case lowEnergyReadAdvertisingChannelTxPower
    
    // Requests the Controller to generate 8 octets of random data to be sent to the Host.
    case lowEnergyRand
    
    // Used by the Host to set the advertising parameters.
    case lowEnergySetAdvertisingParameters(LESetAdvertisingParametersCommand)
    
    // Used to change the Link Layer connection parameters of a connection.
    case lowEnergyConnectionUpdate(LEConnectionUpdateCommand)
    
    // Used to request the Controller to start or stop advertising.
    case lowEnergySetAdvertisingEnable(LESetAdvertisingEnableCommand)
    
    //Used to create a Link Layer connection to a connectable advertiser.
    case lowEnergyCreateConnection(LECreateConnectionCommand)
    
    // Requests the features used on the connection and the features supported by the remote device.
    case lowEnergyReadRemoteFeatures(LEReadRemoteFeaturesCommand)
    
    // Encrypts the Plaintext Data
    case lowEnergyEncrypt(LEEncryptCommand)
    
    // Replies to an LE Long Term Key Request event from the Controller if the Host cannot provide a Long Term Key for this Connection_Handle
    case lowEnergyLongTermKeyRequestNegativeReply(LELongTermKeyRequestNegativeReplyCommand)
    
    // Replies to an LE Long Term Key Request event from the Controller, and specifies the Long_Term_Key parameter that shall be used for this Connection_Handle.
    case lowEnergyLongTermKeyRequestReply(LELongTermKeyRequestReplyCommand)
    
    //  Used to authenticate the given encryption key associated with the remote device specified by the Connection_Handle, and once authenticated will encrypt the connection.
    case lowEnergyStartEncryption(LEStartEncryptionCommand)
    
    // Reads the states and state combinations that the link layer supports.
    case lowEnergyReadSupportedStates
    
    // Starts a test where the DUT receives test reference packets at a fixed interval.
    case lowEnergyReceiverTest(LEReceiverTestCommand)
    
    // Starts a test where the DUT generates test reference packets at a fixed interval.
    case lowEnergyTransmitterTest(LETransmitterTestCommand)
    
    // Stops any test which is in progress.
    case lowEnergyTestEnd
    
    // Adds one device to the list of address translations used to resolve Resolvable Private Addresses in the Controller.
    case lowEnergyAddDeviceToResolvingList(LEAddDeviceToResolvingListCommand)
    
    // Removes one device from the list of address translations used to resolve Resolvable Private Addresses in the Controller.
    case lowEnergyRemoveDeviceFromResolvingList(LERemoveDeviceFromResolvingListCommand)
    
    // Allows the Host to suggest maximum transmission packet size and maximum packet transmission time
    case lowEnergySetDataLength(LESetDataLengthCommand)
    
    // Allows the Host to read the Host's suggested values (SuggestedMaxTxOctets and SuggestedMaxTxTime) for the Controller's maximum transmitted number of payload octets and maximum packet transmission time to be used for new connections
    case lowEnergyReadSuggestedDataLength
    
    // Allows the Host to specify its suggested values for the Controller's maximum transmission number of payload octets and maximum packet transmission time to be used for new connections.
    case lowEnergyWriteSuggestedDataLength(LEWriteSuggestedDefaultDataLengthCommand)
    
    // Used to return the local P-256 public key from the Controller
    case lowEnergyReadLocalP256PublicKey(LEReadLocalP256PublicKeyCommand)
    
    // Used to remove all devices from the list of address translations used to resolve Resolvable Private Addresses in the Controller.
    case lowEnergyClearResolvingList
    
    // Used to read the total number of address translation entries in the resolving list that can be stored in the Controller
    case lowEnergyReadResolvingListSize
    
    // Used to get the current peer Resolvable Private Address being used for the corresponding peer Public and Random (static) Identity Address
    case lowEnergyReadPeerResolvableAddress(LEReadPeerResolvableAddressCommand)
}

public extension Command {
    
    public func execute <Controller: BluetoothHostControllerInterface> (controller: Controller) throws {
        
        switch self {
        case let .lowEnergyScan(command): try command.execute(controller: controller)
        case .readLocalName: try ReadLocalNameCommand().execute(controller: controller)
        case let .writeLocalName(command): try command.execute(controller: controller)
        case let .iBeacon(command): try command.execute(controller: controller)
        case let .lowEnergySetRandomAddress(command): try command.execute(controller: controller)
        case .lowEnergyClearWhiteList: try LEClearWhiteListCommand().execute(controller: controller)
        case .lowEnergyCreateConnectionCancel: try LECreateConnectionCancelCommand().execute(controller: controller)
        case .lowEnergyReadLocalSupportedFeatures: try LEReadLocalSupportedFeaturesCommand().execute(controller: controller)
        case let .lowEnergySetEventMask(command): try command.execute(controller: controller)
        case .lowEnergyReadBufferSize: try LEReadBufferSizeCommand().execute(controller: controller)
        case let .lowEnergyReadChannelMap(command): try command.execute(controller: controller)
        case let .lowEnergyAddDeviceToWhiteList(command): try command.execute(controller: controller)
        case let .lowEnergyRemoveDeviceFromWhiteList(command): try command.execute(controller: controller)
        case .lowEnergyReadWhiteListSize: try LEReadWhiteListSizeCommand().execute(controller: controller)
        case .lowEnergyReadAdvertisingChannelTxPower: try LEReadAdvertisingChannelTxPowerCommand().execute(controller: controller)
        case .lowEnergyRand: try LERandCommand().execute(controller: controller)
        case let .lowEnergySetAdvertisingParameters(command): try command.execute(controller: controller)
        case let .lowEnergyConnectionUpdate(command): try command.execute(controller: controller)
        case let .lowEnergySetAdvertisingEnable(command): try command.execute(controller: controller)
        case let .lowEnergyCreateConnection(command): try command.execute(controller: controller)
        case let .lowEnergyReadRemoteFeatures(command): try command.execute(controller: controller)
        case let .lowEnergyEncrypt(command): try command.execute(controller: controller)
        case let .lowEnergyLongTermKeyRequestNegativeReply(command): try command.execute(controller: controller)
        case let .lowEnergyLongTermKeyRequestReply(command): try command.execute(controller: controller)
        case let .lowEnergyStartEncryption(command): try command.execute(controller: controller)
        case .lowEnergyReadSupportedStates: try LEReadSupportedStatesCommand().execute(controller: controller)
        case let .lowEnergyReceiverTest(command): try command.execute(controller: controller)
        case let .lowEnergyTransmitterTest(command): try command.execute(controller: controller)
        case .lowEnergyTestEnd:  try LETestEndCommand().execute(controller: controller)
        case let .lowEnergyAddDeviceToResolvingList(command): try command.execute(controller: controller)
        case let .lowEnergyRemoveDeviceFromResolvingList(command): try command.execute(controller: controller)
        case let .lowEnergySetDataLength(command): try command.execute(controller: controller)
        case .lowEnergyReadSuggestedDataLength: try LEReadSuggestedDefaultDataLengthCommand().execute(controller: controller)
        case let .lowEnergyWriteSuggestedDataLength(command): try command.execute(controller: controller)
        case let .lowEnergyReadLocalP256PublicKey(command): try command.execute(controller: controller)
        case .lowEnergyClearResolvingList: try LEClearResolvingListCommand().execute(controller: controller)
        case .lowEnergyReadResolvingListSize: try LEReadResolvingListSizeCommand().execute(controller: controller)
        case let .lowEnergyReadPeerResolvableAddress(command): try command.execute(controller: controller)
        case let .inquiry(command): try command.execute(controller: controller)
        case .inquiryCancel: try InquiryCancelCommand().execute(controller: controller)
        case let .periodicInquiryMode(command): try command.execute(controller: controller)
        case .exitPeriodicInquiryMode: try ExitPeriodicInquiryCommand().execute(controller: controller)
        case let .createConnection(command): try command.execute(controller: controller)
        case let .disconnect(command): try command.execute(controller: controller)
        case let .createConnectionCancel(command): try command.execute(controller: controller)
        case let .remoteNameRequest(command): try command.execute(controller: controller)
        case .readDataBlockSize: try ReadDataBlockSizeCommand().execute(controller: controller)
        case let .setConnectionEncryption(command): try command.execute(controller: controller)
        case let .readRemoteSupportedFeatures(command): try command.execute(controller: controller)
        case let .readRemoteExtendedFeatures(command): try command.execute(controller: controller)
        case let .readRemoteVersionInformation(command): try command.execute(controller: controller)
        }
    }
}

public protocol CommandProtocol {
    
    static var commandType: CommandType { get }
    
    func execute <Controller: BluetoothHostControllerInterface> (controller: Controller) throws
}

public protocol ArgumentableCommand: CommandProtocol {
    
    associatedtype Option: OptionProtocol
    
    init(parameters: [Parameter<Option>]) throws
}

public extension ArgumentableCommand {
    
    init(arguments: [String]) throws {
        
        let parameters = try Parameter<Option>.parse(arguments: arguments)
        
        try self.init(parameters: parameters)
    }
}

public extension Command {
    
    public init(arguments: [String]) throws {
        
        guard let commandTypeString = arguments.first
            else { throw CommandError.noCommand }
        
        guard let commandType = CommandType(rawValue: commandTypeString)
            else { throw CommandError.invalidCommandType(commandTypeString) }
        
        let commandArguments = Array(arguments.dropFirst())
        
        switch commandType {
        case .lowEnergyScan:
            let command = try LEScanCommand(arguments: commandArguments)
            self = .lowEnergyScan(command)
            
        case .readLocalName:
            self = .readLocalName
            
        case .writeLocalName:
            let command = try WriteLocalNameCommand(arguments: commandArguments)
            self = .writeLocalName(command)
            
        case .iBeacon:
            let command = try iBeaconCommand(arguments: commandArguments)
            self = .iBeacon(command)
            
        case .lowEnergySetRandomAddress:
            let command = try LESetRandomAddressCommand(arguments: commandArguments)
            self = .lowEnergySetRandomAddress(command)
            
        case .lowEnergyClearWhiteList:
            self = .lowEnergyClearWhiteList
            
        case .lowEnergyCreateConnectionCancel:
            self = .lowEnergyCreateConnectionCancel
            
        case .lowEnergyReadLocalSupportedFeatures:
            self = .lowEnergyReadLocalSupportedFeatures
            
        case .lowEnergySetEventMask:
            let command = try LESetEventMaskCommand(arguments: commandArguments)
            self = .lowEnergySetEventMask(command)
            
        case .lowEnergyReadBufferSize:
            self = .lowEnergyReadBufferSize
            
        case .lowEnergyReadChannelMap:
            let command = try LEReadChannelMapCommand(arguments: commandArguments)
            self = .lowEnergyReadChannelMap(command)
            
        case .lowEnergyAddDeviceToWhiteList:
            let command = try LEAddDeviceToWhiteListCommand(arguments: commandArguments)
            self = .lowEnergyAddDeviceToWhiteList(command)
            
        case .lowEnergyRemoveDeviceFromWhiteList:
            let command = try LERemoveDeviceFromWhiteListCommand(arguments: commandArguments)
            self = .lowEnergyRemoveDeviceFromWhiteList(command)
            
        case .lowEnergyReadWhiteListSize:
            self = .lowEnergyReadWhiteListSize
            
        case .lowEnergyReadAdvertisingChannelTxPower:
            self = .lowEnergyReadAdvertisingChannelTxPower
            
        case .lowEnergyRand:
            self = .lowEnergyRand
            
        case .lowEnergySetAdvertisingParameters:
            let command = try LESetAdvertisingParametersCommand(arguments: commandArguments)
            self = .lowEnergySetAdvertisingParameters(command)
            
        case .lowEnergyConnectionUpdate:
            let command = try LEConnectionUpdateCommand(arguments: commandArguments)
            self = .lowEnergyConnectionUpdate(command)
            
        case .lowEnergySetAdvertisingEnable:
            let command = try LESetAdvertisingEnableCommand(arguments: commandArguments)
            self = .lowEnergySetAdvertisingEnable(command)
            
        case .lowEnergyCreateConnection:
            let command = try LECreateConnectionCommand(arguments: commandArguments)
            self = .lowEnergyCreateConnection(command)
            
        case .lowEnergyReadRemoteFeatures:
            let command = try LEReadRemoteFeaturesCommand(arguments: commandArguments)
            self = .lowEnergyReadRemoteFeatures(command)
            
        case .lowEnergyEncrypt:
            let command = try LEEncryptCommand(arguments: commandArguments)
            self = .lowEnergyEncrypt(command)
            
        case .lowEnergyLongTermKeyRequestNegativeReply:
            let command = try LELongTermKeyRequestNegativeReplyCommand(arguments: commandArguments)
            self = .lowEnergyLongTermKeyRequestNegativeReply(command)
            
        case .lowEnergyLongTermKeyRequestReply:
            let command = try LELongTermKeyRequestReplyCommand(arguments: commandArguments)
            self = .lowEnergyLongTermKeyRequestReply(command)
            
        case .lowEnergyStartEncryption:
            let command = try LEStartEncryptionCommand(arguments: commandArguments)
            self = .lowEnergyStartEncryption(command)
            
        case .lowEnergyReadSupportedStates:
            self = .lowEnergyReadSupportedStates
            
        case .lowEnergyReceiverTest:
            let command = try LEReceiverTestCommand(arguments: commandArguments)
            self = .lowEnergyReceiverTest(command)
            
        case .lowEnergyTransmitterTest:
            let command = try LETransmitterTestCommand(arguments: commandArguments)
            self = .lowEnergyTransmitterTest(command)
            
        case .lowEnergyTestEnd:
            self = .lowEnergyTestEnd
            
        case .lowEnergyAddDeviceToResolvingList:
            let command = try LEAddDeviceToResolvingListCommand(arguments: commandArguments)
            self = .lowEnergyAddDeviceToResolvingList(command)
            
        case .lowEnergyRemoveDeviceFromResolvingList:
            let command = try LERemoveDeviceFromResolvingListCommand(arguments: commandArguments)
            self = .lowEnergyRemoveDeviceFromResolvingList(command)
            
        case .lowEnergySetDataLength:
            let command = try LESetDataLengthCommand(arguments: commandArguments)
            self = .lowEnergySetDataLength(command)
            
        case .lowEnergyReadSuggestedDefaultDataLength:
            self = .lowEnergyReadSuggestedDataLength
            
        case .lowEnergyWriteSuggestedDefaultDataLength:
            let command = try LEWriteSuggestedDefaultDataLengthCommand(arguments: commandArguments)
            self = .lowEnergyWriteSuggestedDataLength(command)
            
        case .lowEnergyReadLocalP256PublicKey:
            let command = try LEReadLocalP256PublicKeyCommand(arguments: commandArguments)
            self = .lowEnergyReadLocalP256PublicKey(command)
            
        case .lowEnergyClearResolvingList:
            self = .lowEnergyClearResolvingList
            
        case .lowEnergyReadResolvingListSize:
            self = .lowEnergyReadResolvingListSize
            
        case .lowEnergyReadPeerResolvableAddress:
            let command = try LEReadPeerResolvableAddressCommand(arguments: commandArguments)
            self = .lowEnergyReadPeerResolvableAddress(command)
            
        case .inquiry:
            let command = try InquiryCommand(arguments: commandArguments)
            self = .inquiry(command)
            
        case .inquiryCancel:
            self = .inquiryCancel
            
        case .periodicInquiryMode:
            let command = try PeriodicInquiryModeCommand(arguments: commandArguments)
            self = .periodicInquiryMode(command)
            
        case .exitPeriodicInquiryMode:
            self = .exitPeriodicInquiryMode
            
        case .createConnection:
            let command = try CreateConnectionCommand(arguments: commandArguments)
            self = .createConnection(command)
            
        case .disconnect:
            let command = try DisconnectCommand(arguments: commandArguments)
            self = .disconnect(command)
            
        case .createConnectionCancel:
            let command = try CreateConnectionCancelCommand(arguments: commandArguments)
            self = .createConnectionCancel(command)
            
        case .remoteNameRequest:
            let command = try RequestRemoteNameCommand(arguments: commandArguments)
            self = .remoteNameRequest(command)
            
        case .readDataBlockSize:
            self = .readDataBlockSize
            
        case .setConnectionEncryption:
            let command = try SetConnectionEncryptionCommand(arguments: commandArguments)
            self = .setConnectionEncryption(command)
            
        case .readRemoteSupportedFeatures:
            let command = try ReadRemoteSupportedFeaturesCommand(arguments: commandArguments)
            self = .readRemoteSupportedFeatures(command)

        case .readRemoteExtendedFeatures:
            let command = try ReadRemoteExtendedFeaturesCommand(arguments: commandArguments)
            self = .readRemoteExtendedFeatures(command)
            
        case .readRemoteVersionInformation:
            let command = try ReadRemoteVersionInformationCommand(arguments: commandArguments)
            self = .readRemoteVersionInformation(command)
        }
    }
}
