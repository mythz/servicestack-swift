/* Options:
Date: 2024-10-20 18:14:21
SwiftVersion: 5.0
Version: 8.41
Tip: To override a DTO option, remove "//" prefix before updating
BaseUrl: https://localhost:5001

//BaseClass: 
//AddModelExtensions: True
//AddServiceStackTypes: True
//MakePropertiesOptional: True
//IncludeTypes: 
//ExcludeTypes: 
//ExcludeGenericBaseTypes: False
//AddResponseStatus: False
//AddImplicitVersion: 
//AddDescriptionAsComments: True
//InitializeCollections: False
//TreatTypesAsStrings: 
//DefaultImports: Foundation,ServiceStack
*/

import Foundation
import ServiceStack

// @Route("/contacts", "POST")
// @DataContract()
public class StoreContacts : List<Contact>, IReturnVoid
{
    required public init(){ super.init() }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
    }
}

// @Route("/contacts", "GET")
// @DataContract()
public class GetContacts : IReturn, Codable
{
    public typealias Return = GetContactsResponse

    required public init(){}
}

// @DataContract()
public class CreatePhoneScreen : IReturn, Codable
{
    public typealias Return = PhoneScreen

    // @DataMember(Order=1)
    // @Validate(Validator="GreaterThan(0)")
    public var jobApplicationId:Int?

    // @DataMember(Order=2)
    // @Validate(Validator="GreaterThan(0)", Message="An employee to perform the phone screening must be selected.")
    public var appUserId:Int?

    // @DataMember(Order=3)
    public var applicationStatus:JobApplicationStatus?

    required public init(){}
}

// @DataContract()
public class UpdatePhoneScreen : IReturn, Codable
{
    public typealias Return = PhoneScreen

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var jobApplicationId:Int?

    // @DataMember(Order=3)
    public var notes:String?

    // @DataMember(Order=4)
    public var applicationStatus:JobApplicationStatus?

    required public init(){}
}

// @DataContract()
public class CreateInterview : IReturn, Codable
{
    public typealias Return = Interview

    // @DataMember(Order=1)
    // @Validate(Validator="NotNull")
    public var bookingTime:Date?

    // @DataMember(Order=2)
    // @Validate(Validator="GreaterThan(0)")
    public var jobApplicationId:Int?

    // @DataMember(Order=3)
    // @Validate(Validator="GreaterThan(0)", Message="An employee to perform interview must be selected.")
    public var appUserId:Int?

    // @DataMember(Order=4)
    public var applicationStatus:JobApplicationStatus?

    required public init(){}
}

// @DataContract()
public class UpdateInterview : IReturn, Codable
{
    public typealias Return = Interview

    // @DataMember(Order=1)
    // @Validate(Validator="GreaterThan(0)")
    public var id:Int?

    // @DataMember(Order=2)
    public var jobApplicationId:Int?

    // @DataMember(Order=3)
    public var notes:String?

    // @DataMember(Order=4)
    public var applicationStatus:JobApplicationStatus?

    required public init(){}
}

// @DataContract()
public class CreateJobOffer : IReturn, Codable
{
    public typealias Return = JobOffer

    // @DataMember(Order=1)
    // @Validate(Validator="GreaterThan(0)")
    public var salaryOffer:Int?

    // @DataMember(Order=2)
    // @Validate(Validator="GreaterThan(0)")
    public var jobApplicationId:Int?

    // @DataMember(Order=3)
    public var applicationStatus:JobApplicationStatus?

    // @DataMember(Order=4)
    // @Validate(Validator="NotEmpty")
    public var notes:String?

    required public init(){}
}

// @DataContract()
public class TalentStats : IReturn, IGet, Codable
{
    public typealias Return = TalentStatsResponse

    required public init(){}
}

// @DataContract()
public class QueueCheckUrls : IReturn, Codable
{
    public typealias Return = QueueCheckUrlsResponse

    // @DataMember(Order=1)
    public var urls:String?

    required public init(){}
}

// @DataContract()
public class AltQueryItems : IReturn, Codable
{
    public typealias Return = QueryResponseAlt<Item>

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @DataContract()
public class GetItems : IReturn, Codable
{
    public typealias Return = Items

    required public init(){}
}

// @DataContract()
public class GetNakedItems : IReturn, Codable
{
    public typealias Return = [Item]

    required public init(){}
}

// @Route("/echo/complex")
// @DataContract()
public class EchoComplexTypes : IReturn, Codable
{
    public typealias Return = EchoComplexTypes

    // @DataMember(Order=1)
    public var subType:SubType?

    // @DataMember(Order=2)
    public var subTypes:[SubType]?

    // @DataMember(Order=3)
    public var subTypeMap:[String:SubType]?

    // @DataMember(Order=4)
    public var stringMap:[String:String]?

    // @DataMember(Order=5)
    public var intStringMap:[Int:String]?

    required public init(){}
}

// @Route("/echo/collections")
// @DataContract()
public class EchoCollections : IReturn, Codable
{
    public typealias Return = EchoCollections

    // @DataMember(Order=1)
    public var stringList:[String]?

    // @DataMember(Order=2)
    public var stringArray:[String] = []

    // @DataMember(Order=3)
    public var stringMap:[String:String]?

    // @DataMember(Order=4)
    public var intStringMap:[Int:String]?

    required public init(){}
}

// @DataContract()
public class FormDataTest : IReturn, Codable
{
    public typealias Return = FormDataTest

    // @DataMember(Order=1)
    public var hidden:Bool?

    // @DataMember(Order=2)
    public var string:String?

    // @DataMember(Order=3)
    public var int:Int?

    // @DataMember(Order=4)
    public var dateTime:Date?

    // @DataMember(Order=5)
    public var dateOnly:Date?

    // @DataMember(Order=6)
    @TimeSpan public var timeSpan:TimeInterval?

    // @DataMember(Order=7)
    @TimeSpan public var timeOnly:TimeInterval?

    // @DataMember(Order=8)
    public var password:String?

    // @DataMember(Order=9)
    public var checkboxString:[String] = []

    // @DataMember(Order=10)
    public var radioString:String?

    // @DataMember(Order=11)
    public var radioColors:Colors?

    // @DataMember(Order=12)
    public var checkboxColors:[Colors] = []

    // @DataMember(Order=13)
    public var selectColors:Colors?

    // @DataMember(Order=14)
    public var multiSelectColors:[Colors] = []

    // @DataMember(Order=15)
    public var profileUrl:String?

    // @DataMember(Order=16)
    public var attachments:[Attachment]?

    required public init(){}
}

// @DataContract()
public class ComboBoxExamples : IReturn, IPost, Codable
{
    public typealias Return = ComboBoxExamples

    // @DataMember(Order=1)
    public var singleClientValues:String?

    // @DataMember(Order=2)
    public var multipleClientValues:[String]?

    // @DataMember(Order=3)
    public var singleServerValues:String?

    // @DataMember(Order=4)
    public var multipleServerValues:[String]?

    // @DataMember(Order=5)
    public var singleServerEntries:String?

    // @DataMember(Order=6)
    public var multipleServerEntries:[String]?

    required public init(){}
}

// @Route("/profile-image")
// @Route("/profile-image/{Type}")
// @Route("/profile-image/{Type}/{Size}")
// @DataContract()
public class GetProfileImage : IReturn, Codable
{
    public typealias Return = [UInt8]

    // @DataMember(Order=1)
    public var type:String?

    // @DataMember(Order=2)
    public var size:String?

    required public init(){}
}

// @Route("/secured")
// @ValidateRequest(Validator="IsAuthenticated")
// @DataContract()
public class Secured : IReturn, Codable
{
    public typealias Return = SecuredResponse

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @Route("/jwt")
// @DataContract()
public class CreateJwt : AuthUserSession, IReturn
{
    public typealias Return = CreateJwtResponse

    // @DataMember(Order=1)
    public var jwtExpiry:Date?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case jwtExpiry
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        jwtExpiry = try container.decodeIfPresent(Date.self, forKey: .jwtExpiry)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if jwtExpiry != nil { try container.encode(jwtExpiry, forKey: .jwtExpiry) }
    }
}

// @Route("/jwt-refresh")
// @DataContract()
public class CreateRefreshJwt : IReturn, Codable
{
    public typealias Return = CreateRefreshJwtResponse

    // @DataMember(Order=1)
    public var userAuthId:String?

    // @DataMember(Order=2)
    public var jwtExpiry:Date?

    required public init(){}
}

// @Route("/jwt-invalidate")
// @DataContract()
public class InvalidateLastAccessToken : IReturn, Codable
{
    public typealias Return = EmptyResponse

    required public init(){}
}

// @DataContract()
public class MovieGETRequest : IReturn, Codable
{
    public typealias Return = Movie

    /**
    * Unique Id of the movie
    */
    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var movieID:String?

    required public init(){}
}

// @DataContract()
public class MoviePOSTRequest : Movie, IReturn
{
    public typealias Return = Movie


    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case movieID
        case movieNo
        case movieRef
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        movieID = try container.decodeIfPresent(String.self, forKey: .movieID)
        movieNo = try container.decodeIfPresent(Int.self, forKey: .movieNo)
        movieRef = try container.decodeIfPresent(String.self, forKey: .movieRef)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if movieID != nil { try container.encode(movieID, forKey: .movieID) }
        if movieNo != nil { try container.encode(movieNo, forKey: .movieNo) }
        if movieRef != nil { try container.encode(movieRef, forKey: .movieRef) }
    }
}

// @DataContract()
public class CommandOperation : IReturn, IPost, Codable
{
    public typealias Return = EmptyResponse

    // @DataMember(Order=1)
    public var newTodo:String?

    // @DataMember(Order=2)
    public var throwException:String?

    // @DataMember(Order=3)
    public var throwArgumentException:String?

    // @DataMember(Order=4)
    public var throwNotSupportedException:String?

    required public init(){}
}

// @DataContract()
public class FailedCommandTests : Codable
{
    // @DataMember(Order=1)
    public var failNoRetryCommand:Bool?

    // @DataMember(Order=2)
    public var failDefaultRetryCommand:Bool?

    // @DataMember(Order=3)
    public var failTimes1Command:Bool?

    // @DataMember(Order=4)
    public var failTimes4Command:Bool?

    required public init(){}
}

// @Route("/greet/{Name}")
// @DataContract()
public class Greet : IReturn, Codable
{
    public typealias Return = HelloResponse

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @Route("/hello")
// @Route("/hello/{Name}")
// @DataContract()
public class Hello : IReturn, IGet, Codable
{
    public typealias Return = HelloResponse

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @Route("/hello-long/{Name}", "PATCH,PUT")
// @Route("/hello-very-long/{Name}", "GET,POST,PUT")
// @ValidateRequest(Validator="HasRole(`Employee`)")
// @ValidateRequest(Validator="HasPermission(`ThePermission`)")
// @ValidateRequest(Validator="IsAuthenticated")
// @DataContract()
public class HelloVeryLongOperationNameVersions : IReturn, IGet, IPost, IPut, IPatch, Codable
{
    public typealias Return = HelloResponse

    // @DataMember(Order=1)
    public var name:String?

    // @DataMember(Order=2)
    public var names:[String] = []

    // @DataMember(Order=3)
    public var ids:[Int] = []

    required public init(){}
}

// @Route("/hellosecure/{Name}", "PUT")
// @ValidateRequest(Validator="IsAuthenticated")
// @DataContract()
public class HelloSecure : IReturn, Codable
{
    public typealias Return = HelloResponse

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @DataContract
public class HelloBookingList : IReturn, Codable
{
    public typealias Return = [Booking]

    // @DataMember(Name="Alias", Order=1)
    public var Alias:String?

    required public init(){}
}

// @DataContract()
public class HelloString : IReturn, Codable
{
    public typealias Return = String

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @Route("/return/string")
// @DataContract()
public class ReturnString : IReturn, Codable
{
    public typealias Return = String

    // @DataMember(Order=1)
    public var data:String?

    required public init(){}
}

// @DataContract()
public class GetWorkerStats : IReturn, IGet, Codable
{
    public typealias Return = GetWorkerStatsResponse

    required public init(){}
}

/**
* Given a list of messages comprising a conversation, the model will return a response.
*/
// @Route("/v1/chat/completions", "POST")
// @DataContract()
public class OpenAiChatCompletion : OpenAiChat, IReturn, IPost
{
    public typealias Return = OpenAiChatResponse

    /**
    * Provide a unique identifier to track requests
    */
    // @DataMember(Order=1)
    public var refId:String?

    /**
    * Specify which AI Provider to use
    */
    // @DataMember(Order=2)
    public var provider:String?

    /**
    * Categorize like requests under a common group
    */
    // @DataMember(Order=3)
    public var tag:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case refId
        case provider
        case tag
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        refId = try container.decodeIfPresent(String.self, forKey: .refId)
        provider = try container.decodeIfPresent(String.self, forKey: .provider)
        tag = try container.decodeIfPresent(String.self, forKey: .tag)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if refId != nil { try container.encode(refId, forKey: .refId) }
        if provider != nil { try container.encode(provider, forKey: .provider) }
        if tag != nil { try container.encode(tag, forKey: .tag) }
    }
}

/**
* Active Media Worker Models available in AI Server
*/
// @DataContract()
public class ActiveMediaModels : IReturn, IGet, Codable
{
    public typealias Return = StringsResponse

    required public init(){}
}

/**
* Convert text to speech
*/
// @Api(Description="Convert text to speech")
// @DataContract()
public class TextToSpeech : IReturn, IGeneration, Codable
{
    public typealias Return = GenerationResponse

    /**
    * The text to be converted to speech
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="The text to be converted to speech")
    // @Validate(Validator="NotEmpty")
    public var input:String?

    /**
    * Optional specific model and voice to use for speech generation
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="Optional specific model and voice to use for speech generation")
    public var model:String?

    /**
    * Optional seed for reproducible results in speech generation
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="Optional seed for reproducible results in speech generation")
    public var seed:Int?

    /**
    * Optional client-provided identifier for the request
    */
    // @DataMember(Order=4)
    // @ApiMember(Description="Optional client-provided identifier for the request")
    public var refId:String?

    /**
    * Tag to identify the request
    */
    // @DataMember(Order=5)
    // @ApiMember(Description="Tag to identify the request")
    public var tag:String?

    required public init(){}
}

/**
* Convert speech to text
*/
// @Api(Description="Convert speech to text")
// @DataContract()
public class SpeechToText : IReturn, IGeneration, Codable
{
    public typealias Return = GenerationResponse

    /**
    * The audio stream containing the speech to be transcribed
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="The audio stream containing the speech to be transcribed")
    // @Required()
    public var audio:Data?

    /**
    * Optional client-provided identifier for the request
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="Optional client-provided identifier for the request")
    public var refId:String?

    /**
    * Tag to identify the request
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="Tag to identify the request")
    public var tag:String?

    required public init(){}
}

/**
* Generate image from text description
*/
// @Api(Description="Generate image from text description")
// @DataContract()
public class TextToImage : IReturn, IGeneration, Codable
{
    public typealias Return = GenerationResponse

    /**
    * The main prompt describing the desired image
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="The main prompt describing the desired image")
    // @Validate(Validator="NotEmpty")
    public var positivePrompt:String?

    /**
    * Optional prompt specifying what should not be in the image
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="Optional prompt specifying what should not be in the image")
    public var negativePrompt:String?

    /**
    * Desired width of the generated image
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="Desired width of the generated image")
    public var width:Int?

    /**
    * Desired height of the generated image
    */
    // @DataMember(Order=4)
    // @ApiMember(Description="Desired height of the generated image")
    public var height:Int?

    /**
    * Number of images to generate in a single batch
    */
    // @DataMember(Order=5)
    // @ApiMember(Description="Number of images to generate in a single batch")
    public var batchSize:Int?

    /**
    * The AI model to use for image generation
    */
    // @DataMember(Order=6)
    // @ApiMember(Description="The AI model to use for image generation")
    public var model:String?

    /**
    * Optional seed for reproducible results
    */
    // @DataMember(Order=7)
    // @ApiMember(Description="Optional seed for reproducible results")
    public var seed:Int?

    /**
    * Optional client-provided identifier for the request
    */
    // @DataMember(Order=8)
    // @ApiMember(Description="Optional client-provided identifier for the request")
    public var refId:String?

    /**
    * Tag to identify the request
    */
    // @DataMember(Order=9)
    // @ApiMember(Description="Tag to identify the request")
    public var tag:String?

    required public init(){}
}

/**
* Generate image from another image
*/
// @Api(Description="Generate image from another image")
// @DataContract()
public class ImageToImage : IReturn, IGeneration, Codable
{
    public typealias Return = GenerationResponse

    /**
    * The image to use as input
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="The image to use as input")
    // @Required()
    public var image:Data?

    /**
    * Prompt describing the desired output
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="Prompt describing the desired output")
    // @Validate(Validator="NotEmpty")
    public var positivePrompt:String?

    /**
    * Negative prompt describing what should not be in the image
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="Negative prompt describing what should not be in the image")
    public var negativePrompt:String?

    /**
    * Optional specific amount of denoise to apply
    */
    // @DataMember(Order=4)
    // @ApiMember(Description="Optional specific amount of denoise to apply")
    public var denoise:Float?

    /**
    * Number of images to generate in a single batch
    */
    // @DataMember(Order=5)
    // @ApiMember(Description="Number of images to generate in a single batch")
    public var batchSize:Int?

    /**
    * Optional seed for reproducible results in image generation
    */
    // @DataMember(Order=6)
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    public var seed:Int?

    /**
    * Optional client-provided identifier for the request
    */
    // @DataMember(Order=7)
    // @ApiMember(Description="Optional client-provided identifier for the request")
    public var refId:String?

    /**
    * Tag to identify the request
    */
    // @DataMember(Order=8)
    // @ApiMember(Description="Tag to identify the request")
    public var tag:String?

    required public init(){}
}

/**
* Upscale an image
*/
// @Api(Description="Upscale an image")
// @DataContract()
public class ImageUpscale : IReturn, IGeneration, Codable
{
    public typealias Return = GenerationResponse

    /**
    * The image to upscale
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="The image to upscale")
    // @Required()
    public var image:Data?

    /**
    * Optional seed for reproducible results in image generation
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    public var seed:Int?

    /**
    * Optional client-provided identifier for the request
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="Optional client-provided identifier for the request")
    public var refId:String?

    /**
    * Tag to identify the request
    */
    // @DataMember(Order=4)
    // @ApiMember(Description="Tag to identify the request")
    public var tag:String?

    required public init(){}
}

/**
* Generate image with masked area
*/
// @Api(Description="Generate image with masked area")
// @DataContract()
public class ImageWithMask : IReturn, IGeneration, Codable
{
    public typealias Return = GenerationResponse

    /**
    * Prompt describing the desired output in the masked area
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="Prompt describing the desired output in the masked area")
    // @Validate(Validator="NotEmpty")
    public var positivePrompt:String?

    /**
    * Negative prompt describing what should not be in the masked area
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="Negative prompt describing what should not be in the masked area")
    public var negativePrompt:String?

    /**
    * The image to use as input
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="The image to use as input")
    // @Required()
    public var image:Data?

    /**
    * The mask to use as input
    */
    // @DataMember(Order=4)
    // @ApiMember(Description="The mask to use as input")
    // @Required()
    public var mask:Data?

    /**
    * Optional specific amount of denoise to apply
    */
    // @DataMember(Order=5)
    // @ApiMember(Description="Optional specific amount of denoise to apply")
    public var denoise:Float?

    /**
    * Optional seed for reproducible results in image generation
    */
    // @DataMember(Order=6)
    // @ApiMember(Description="Optional seed for reproducible results in image generation")
    public var seed:Int?

    /**
    * Optional client-provided identifier for the request
    */
    // @DataMember(Order=7)
    // @ApiMember(Description="Optional client-provided identifier for the request")
    public var refId:String?

    /**
    * Tag to identify the request
    */
    // @DataMember(Order=8)
    // @ApiMember(Description="Tag to identify the request")
    public var tag:String?

    required public init(){}
}

/**
* Convert image to text
*/
// @Api(Description="Convert image to text")
// @DataContract()
public class ImageToText : IReturn, IGeneration, Codable
{
    public typealias Return = GenerationResponse

    /**
    * The image to convert to text
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="The image to convert to text")
    // @Required()
    public var image:Data?

    /**
    * Optional client-provided identifier for the request
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="Optional client-provided identifier for the request")
    public var refId:String?

    /**
    * Tag to identify the request
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="Tag to identify the request")
    public var tag:String?

    required public init(){}
}

// @Route("/sendjson")
// @DataContract()
public class SendJson : IReturn, Codable
{
    public typealias Return = String

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var requestStream:Data?

    required public init(){}
}

// @Route("/sendtext")
// @DataContract()
public class SendText : IReturn, Codable
{
    public typealias Return = String

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var contentType:String?

    // @DataMember(Order=4)
    public var requestStream:Data?

    required public init(){}
}

// @Route("/sendraw")
// @DataContract()
public class SendRaw : IReturn, Codable
{
    public typealias Return = [UInt8]

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var contentType:String?

    // @DataMember(Order=4)
    public var requestStream:Data?

    required public init(){}
}

// @DataContract()
public class SendDefault : IReturn, Codable
{
    public typealias Return = SendVerbResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/sendrestget/{Id}", "GET")
// @DataContract()
public class SendRestGet : IReturn, IGet, Codable
{
    public typealias Return = SendVerbResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class SendGet : IReturn, IGet, Codable
{
    public typealias Return = SendVerbResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class SendPost : IReturn, IPost, Codable
{
    public typealias Return = SendVerbResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class SendPut : IReturn, IPut, Codable
{
    public typealias Return = SendVerbResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class SendReturnVoid : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class HelloAuth : IReturn, Codable
{
    public typealias Return = HelloResponse

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @Route("/testauth")
// @DataContract()
public class TestAuth : IReturn, Codable
{
    public typealias Return = TestAuthResponse

    required public init(){}
}

// @DataContract()
public class RequiresAdmin : IReturn, Codable
{
    public typealias Return = RequiresAdmin

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class HelloAllTypes : IReturn, Codable
{
    public typealias Return = HelloAllTypesResponse

    // @DataMember(Order=1)
    public var name:String?

    // @DataMember(Order=2)
    public var allTypes:AllTypes?

    // @DataMember(Order=3)
    public var allCollectionTypes:AllCollectionTypes?

    required public init(){}
}

// @Route("/throw/{Type}")
// @DataContract()
public class ThrowType : IReturn, Codable
{
    public typealias Return = ThrowTypeResponse

    // @DataMember(Order=1)
    public var type:String?

    // @DataMember(Order=2)
    public var message:String?

    required public init(){}
}

// @Route("/throwvalidation")
// @DataContract()
public class ThrowValidation : IReturn, Codable
{
    public typealias Return = ThrowValidationResponse

    // @DataMember(Order=1)
    public var age:Int?

    // @DataMember(Order=2)
    public var required:String?

    // @DataMember(Order=3)
    public var email:String?

    required public init(){}
}

// @DataContract()
public class AllTypes : IReturn, Codable
{
    public typealias Return = AllTypes

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var nullableId:Int?

    // @DataMember(Order=3)
    public var boolean:Bool?

    // @DataMember(Order=4)
    public var byte:UInt8?

    // @DataMember(Order=5)
    public var short:Int16?

    // @DataMember(Order=6)
    public var int:Int?

    // @DataMember(Order=7)
    public var long:Int?

    // @DataMember(Order=8)
    public var uShort:UInt16?

    // @DataMember(Order=9)
    public var uInt:UInt32?

    // @DataMember(Order=10)
    public var uLong:UInt64?

    // @DataMember(Order=11)
    public var float:Float?

    // @DataMember(Order=12)
    public var double:Double?

    // @DataMember(Order=13)
    public var decimal:Double?

    // @DataMember(Order=14)
    public var string:String?

    // @DataMember(Order=15)
    public var dateTime:Date?

    // @DataMember(Order=16)
    @TimeSpan public var timeSpan:TimeInterval?

    // @DataMember(Order=17)
    public var dateTimeOffset:Date?

    // @DataMember(Order=18)
    public var guid:String?

    // @DataMember(Order=19)
    public var char:String?

    // @DataMember(Order=20)
    public var keyValuePair:KeyValuePair<String, String>?

    // @DataMember(Order=21)
    public var nullableDateTime:Date?

    // @DataMember(Order=22)
    @TimeSpan public var nullableTimeSpan:TimeInterval?

    // @DataMember(Order=23)
    public var stringList:[String]?

    // @DataMember(Order=24)
    public var stringArray:[String] = []

    // @DataMember(Order=25)
    public var stringMap:[String:String]?

    // @DataMember(Order=26)
    public var intStringMap:[Int:String]?

    // @DataMember(Order=27)
    public var subType:SubType?

    // @DataMember(Order=28)
    public var nullableBytes:[UInt8?] = []

    required public init(){}
}

// @DataContract()
public class AllCollectionTypes : IReturn, Codable
{
    public typealias Return = AllCollectionTypes

    // @DataMember(Order=1)
    public var intArray:[Int] = []

    // @DataMember(Order=2)
    public var intList:[Int]?

    // @DataMember(Order=3)
    public var stringArray:[String] = []

    // @DataMember(Order=4)
    public var stringList:[String]?

    // @DataMember(Order=5)
    public var floatArray:[Float] = []

    // @DataMember(Order=6)
    public var doubleList:[Double]?

    // @DataMember(Order=7)
    public var byteArray:[UInt8] = []

    // @DataMember(Order=8)
    public var charArray:[String] = []

    // @DataMember(Order=9)
    public var decimalList:[Double]?

    // @DataMember(Order=10)
    public var pocoArray:[Poco] = []

    // @DataMember(Order=11)
    public var pocoList:[Poco]?

    // @DataMember(Order=12)
    public var pocoLookup:[String:[Poco]]?

    // @DataMember(Order=13)
    public var pocoLookupMap:[String:[[String:Poco]]]?

    required public init(){}
}

// @DataContract()
public class ProfileGen : IReturn, Codable
{
    public typealias Return = ProfileGenResponse

    required public init(){}
}

// @DataContract()
public class HelloReturnVoid : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/echo/types")
// @DataContract()
public class EchoTypes : IReturn, Codable
{
    public typealias Return = EchoTypes

    // @DataMember(Order=1)
    public var byte:UInt8?

    // @DataMember(Order=2)
    public var short:Int16?

    // @DataMember(Order=3)
    public var int:Int?

    // @DataMember(Order=4)
    public var long:Int?

    // @DataMember(Order=5)
    public var uShort:UInt16?

    // @DataMember(Order=6)
    public var uInt:UInt32?

    // @DataMember(Order=7)
    public var uLong:UInt64?

    // @DataMember(Order=8)
    public var float:Float?

    // @DataMember(Order=9)
    public var double:Double?

    // @DataMember(Order=10)
    public var decimal:Double?

    // @DataMember(Order=11)
    public var string:String?

    // @DataMember(Order=12)
    public var dateTime:Date?

    // @DataMember(Order=13)
    @TimeSpan public var timeSpan:TimeInterval?

    // @DataMember(Order=14)
    public var dateTimeOffset:Date?

    // @DataMember(Order=15)
    public var guid:String?

    // @DataMember(Order=16)
    public var char:String?

    required public init(){}
}

// @DataContract()
public class HelloList : IReturn, Codable
{
    public typealias Return = [ListResult]

    // @DataMember(Order=1)
    public var names:[String]?

    required public init(){}
}

// @DataContract()
public class HelloWithEnum : Codable
{
    // @DataMember(Order=1)
    public var enumProp:EnumType?

    // @DataMember(Order=2)
    public var enumTypeFlags:EnumTypeFlags?

    // @DataMember(Order=3)
    public var enumWithValues:EnumWithValues?

    // @DataMember(Order=4)
    public var nullableEnumProp:EnumType?

    // @DataMember(Order=5)
    public var enumFlags:EnumFlags?

    // @DataMember(Order=6)
    public var enumAsInt:EnumAsInt?

    // @DataMember(Order=7)
    public var enumStyle:EnumStyle?

    // @DataMember(Order=8)
    public var enumStyleMembers:EnumStyleMembers?

    required public init(){}
}

// @DataContract()
public class HelloWithEnumList : Codable
{
    // @DataMember(Order=1)
    public var enumProp:[EnumType]?

    // @DataMember(Order=2)
    public var enumWithValues:[EnumWithValues]?

    // @DataMember(Order=3)
    public var nullableEnumProp:[EnumType?]?

    // @DataMember(Order=4)
    public var enumFlags:[EnumFlags]?

    // @DataMember(Order=5)
    public var enumStyle:[EnumStyle]?

    required public init(){}
}

// @DataContract()
public class HelloWithEnumMap : Codable
{
    // @DataMember(Order=1)
    public var enumProp:[EnumType:EnumType]?

    // @DataMember(Order=2)
    public var enumWithValues:[EnumWithValues:EnumWithValues]?

    // @DataMember(Order=3)
    public var nullableEnumProp:[EnumType?:EnumType?]?

    // @DataMember(Order=4)
    public var enumFlags:[EnumFlags:EnumFlags]?

    // @DataMember(Order=5)
    public var enumStyle:[EnumStyle:EnumStyle]?

    required public init(){}
}

// @DataContract()
public class HelloSubAllTypes : AllTypesBase, IReturn
{
    public typealias Return = SubAllTypes

    // @DataMember(Order=1)
    public var hierarchy:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case hierarchy
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        hierarchy = try container.decodeIfPresent(Int.self, forKey: .hierarchy)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if hierarchy != nil { try container.encode(hierarchy, forKey: .hierarchy) }
    }
}

// @DataContract()
public class HelloWithGenericInheritance : HelloBase_1<Poco>, IReturn
{
    public typealias Return = HelloWithGenericInheritance

    // @DataMember(Order=1)
    public var result:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case result
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        result = try container.decodeIfPresent(String.self, forKey: .result)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if result != nil { try container.encode(result, forKey: .result) }
    }
}

// @DataContract()
public class HelloPost : HelloBase, IReturn, IPost
{
    public typealias Return = HelloPost

    required public init(){ super.init() }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
    }
}

// @DataContract()
public class AdminDashboard : IReturn, IGet, Codable
{
    public typealias Return = AdminDashboardResponse

    required public init(){}
}

/**
* Sign In
*/
// @Route("/auth", "GET,POST")
// @Route("/auth/{provider}", "GET,POST")
// @Api(Description="Sign In")
// @DataContract
public class Authenticate : IReturn, IPost, Codable
{
    public typealias Return = AuthenticateResponse

    /**
    * AuthProvider, e.g. credentials
    */
    // @DataMember(Order=1)
    public var provider:String?

    // @DataMember(Order=2)
    public var userName:String?

    // @DataMember(Order=3)
    public var password:String?

    // @DataMember(Order=4)
    public var rememberMe:Bool?

    // @DataMember(Order=5)
    public var accessToken:String?

    // @DataMember(Order=6)
    public var accessTokenSecret:String?

    // @DataMember(Order=7)
    public var returnUrl:String?

    // @DataMember(Order=8)
    public var errorView:String?

    // @DataMember(Order=9)
    public var meta:[String:String]?

    required public init(){}
}

// @DataContract()
public class AdminDatabase : IReturn, IGet, Codable
{
    public typealias Return = AdminDatabaseResponse

    // @DataMember(Order=1)
    public var db:String?

    // @DataMember(Order=2)
    public var schema:String?

    // @DataMember(Order=3)
    public var table:String?

    // @DataMember(Order=4)
    public var fields:[String]?

    // @DataMember(Order=5)
    public var take:Int?

    // @DataMember(Order=6)
    public var skip:Int?

    // @DataMember(Order=7)
    public var orderBy:String?

    // @DataMember(Order=8)
    public var include:String?

    required public init(){}
}

// @DataContract()
public class AdminProfiling : IReturn, Codable
{
    public typealias Return = AdminProfilingResponse

    // @DataMember(Order=1)
    public var source:String?

    // @DataMember(Order=2)
    public var eventType:String?

    // @DataMember(Order=3)
    public var threadId:Int?

    // @DataMember(Order=4)
    public var traceId:String?

    // @DataMember(Order=5)
    public var userAuthId:String?

    // @DataMember(Order=6)
    public var sessionId:String?

    // @DataMember(Order=7)
    public var tag:String?

    // @DataMember(Order=8)
    public var skip:Int?

    // @DataMember(Order=9)
    public var take:Int?

    // @DataMember(Order=10)
    public var orderBy:String?

    // @DataMember(Order=11)
    public var withErrors:Bool?

    // @DataMember(Order=12)
    public var pending:Bool?

    required public init(){}
}

// @Route("/albums", "GET")
// @Route("/albums/{AlbumId}", "GET")
// @DataContract()
public class QueryAlbums : QueryDb<Albums>, IReturn
{
    public typealias Return = QueryResponse<Albums>

    // @DataMember(Order=1)
    public var albumId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case albumId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        albumId = try container.decodeIfPresent(Int.self, forKey: .albumId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if albumId != nil { try container.encode(albumId, forKey: .albumId) }
    }
}

// @Route("/artists", "GET")
// @Route("/artists/{ArtistId}", "GET")
// @DataContract()
public class QueryArtists : QueryDb<Artists>, IReturn
{
    public typealias Return = QueryResponse<Artists>

    // @DataMember(Order=1)
    public var artistId:Int?

    // @DataMember(Order=2)
    public var artistIdBetween:[Int] = []

    // @DataMember(Order=3)
    public var nameStartsWith:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case artistId
        case artistIdBetween
        case nameStartsWith
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        artistId = try container.decodeIfPresent(Int.self, forKey: .artistId)
        artistIdBetween = try container.decodeIfPresent([Int].self, forKey: .artistIdBetween) ?? []
        nameStartsWith = try container.decodeIfPresent(String.self, forKey: .nameStartsWith)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if artistId != nil { try container.encode(artistId, forKey: .artistId) }
        if artistIdBetween.count > 0 { try container.encode(artistIdBetween, forKey: .artistIdBetween) }
        if nameStartsWith != nil { try container.encode(nameStartsWith, forKey: .nameStartsWith) }
    }
}

// @Route("/chinook/customers", "GET")
// @Route("/chinook/customers/{CustomerId}", "GET")
// @DataContract()
public class QueryChinookCustomers : QueryDb<Customers>, IReturn
{
    public typealias Return = QueryResponse<Customers>

    // @DataMember(Order=1)
    public var customerId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case customerId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        customerId = try container.decodeIfPresent(Int.self, forKey: .customerId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if customerId != nil { try container.encode(customerId, forKey: .customerId) }
    }
}

// @Route("/chinook/employees", "GET")
// @Route("/chinook/employees/{EmployeeId}", "GET")
// @DataContract()
public class QueryChinookEmployees : QueryDb<Employees>, IReturn
{
    public typealias Return = QueryResponse<Employees>

    // @DataMember(Order=1)
    public var employeeId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case employeeId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        employeeId = try container.decodeIfPresent(Int.self, forKey: .employeeId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if employeeId != nil { try container.encode(employeeId, forKey: .employeeId) }
    }
}

// @Route("/genres", "GET")
// @Route("/genres/{GenreId}", "GET")
// @DataContract()
public class QueryGenres : QueryDb<Genres>, IReturn
{
    public typealias Return = QueryResponse<Genres>

    // @DataMember(Order=1)
    public var genreId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case genreId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        genreId = try container.decodeIfPresent(Int.self, forKey: .genreId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if genreId != nil { try container.encode(genreId, forKey: .genreId) }
    }
}

// @Route("/invoiceitems", "GET")
// @Route("/invoiceitems/{InvoiceLineId}", "GET")
// @DataContract()
public class QueryInvoiceItems : QueryDb<InvoiceItems>, IReturn
{
    public typealias Return = QueryResponse<InvoiceItems>

    // @DataMember(Order=1)
    public var invoiceLineId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case invoiceLineId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        invoiceLineId = try container.decodeIfPresent(Int.self, forKey: .invoiceLineId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if invoiceLineId != nil { try container.encode(invoiceLineId, forKey: .invoiceLineId) }
    }
}

// @Route("/invoices", "GET")
// @Route("/invoices/{InvoiceId}", "GET")
// @DataContract()
public class QueryInvoices : QueryDb<Invoices>, IReturn
{
    public typealias Return = QueryResponse<Invoices>

    // @DataMember(Order=1)
    public var invoiceId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case invoiceId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        invoiceId = try container.decodeIfPresent(Int.self, forKey: .invoiceId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if invoiceId != nil { try container.encode(invoiceId, forKey: .invoiceId) }
    }
}

// @Route("/mediatypes", "GET")
// @Route("/mediatypes/{MediaTypeId}", "GET")
// @DataContract()
public class QueryMediaTypes : QueryDb<MediaTypes>, IReturn
{
    public typealias Return = QueryResponse<MediaTypes>

    // @DataMember(Order=1)
    public var mediaTypeId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case mediaTypeId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        mediaTypeId = try container.decodeIfPresent(Int.self, forKey: .mediaTypeId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if mediaTypeId != nil { try container.encode(mediaTypeId, forKey: .mediaTypeId) }
    }
}

// @Route("/playlists", "GET")
// @Route("/playlists/{PlaylistId}", "GET")
// @DataContract()
public class QueryPlaylists : QueryDb<Playlists>, IReturn
{
    public typealias Return = QueryResponse<Playlists>

    // @DataMember(Order=1)
    public var playlistId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case playlistId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        playlistId = try container.decodeIfPresent(Int.self, forKey: .playlistId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if playlistId != nil { try container.encode(playlistId, forKey: .playlistId) }
    }
}

// @Route("/tracks", "GET")
// @Route("/tracks/{TrackId}", "GET")
// @DataContract()
public class QueryTracks : QueryDb<Tracks>, IReturn
{
    public typealias Return = QueryResponse<Tracks>

    // @DataMember(Order=1)
    public var trackId:Int?

    // @DataMember(Order=2)
    public var nameContains:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case trackId
        case nameContains
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        trackId = try container.decodeIfPresent(Int.self, forKey: .trackId)
        nameContains = try container.decodeIfPresent(String.self, forKey: .nameContains)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if trackId != nil { try container.encode(trackId, forKey: .trackId) }
        if nameContains != nil { try container.encode(nameContains, forKey: .nameContains) }
    }
}

// @DataContract()
public class QueryJobApplicationAttachment : QueryDb<JobApplicationAttachment>, IReturn
{
    public typealias Return = QueryResponse<JobApplicationAttachment>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @DataContract()
public class QueryContacts : QueryDb<Contact>, IReturn
{
    public typealias Return = QueryResponse<Contact>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @DataContract()
public class QueryJob : QueryDb<Job>, IReturn
{
    public typealias Return = QueryResponse<Job>

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var ids:[Int]?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case ids
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        ids = try container.decodeIfPresent([Int].self, forKey: .ids) ?? []
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if ids != nil && ids!.count > 0 { try container.encode(ids, forKey: .ids) }
    }
}

// @DataContract()
public class QueryJobApplication : QueryDb<JobApplication>, IReturn
{
    public typealias Return = QueryResponse<JobApplication>

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var ids:[Int]?

    // @DataMember(Order=3)
    public var jobId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case ids
        case jobId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        ids = try container.decodeIfPresent([Int].self, forKey: .ids) ?? []
        jobId = try container.decodeIfPresent(Int.self, forKey: .jobId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if ids != nil && ids!.count > 0 { try container.encode(ids, forKey: .ids) }
        if jobId != nil { try container.encode(jobId, forKey: .jobId) }
    }
}

// @DataContract()
public class QueryPhoneScreen : QueryDb<PhoneScreen>, IReturn
{
    public typealias Return = QueryResponse<PhoneScreen>

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var jobApplicationId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case jobApplicationId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
    }
}

// @DataContract()
public class QueryInterview : QueryDb<Interview>, IReturn
{
    public typealias Return = QueryResponse<Interview>

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var jobApplicationId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case jobApplicationId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
    }
}

// @DataContract()
public class QueryJobOffer : QueryDb<JobOffer>, IReturn
{
    public typealias Return = QueryResponse<JobOffer>

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var jobApplicationId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case jobApplicationId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
    }
}

// @DataContract()
public class QueryJobAppEvents : QueryDb<JobApplicationEvent>, IReturn
{
    public typealias Return = QueryResponse<JobApplicationEvent>

    // @DataMember(Order=1)
    public var jobApplicationId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case jobApplicationId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
    }
}

// @ValidateRequest(Validator="IsAuthenticated")
// @DataContract()
public class QueryApplicationUser : QueryDb<ApplicationUser>, IReturn
{
    public typealias Return = QueryResponse<ApplicationUser>

    // @DataMember(Order=1)
    public var emailContains:String?

    // @DataMember(Order=2)
    public var firstNameContains:String?

    // @DataMember(Order=3)
    public var lastNameContains:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case emailContains
        case firstNameContains
        case lastNameContains
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        emailContains = try container.decodeIfPresent(String.self, forKey: .emailContains)
        firstNameContains = try container.decodeIfPresent(String.self, forKey: .firstNameContains)
        lastNameContains = try container.decodeIfPresent(String.self, forKey: .lastNameContains)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if emailContains != nil { try container.encode(emailContains, forKey: .emailContains) }
        if firstNameContains != nil { try container.encode(firstNameContains, forKey: .firstNameContains) }
        if lastNameContains != nil { try container.encode(lastNameContains, forKey: .lastNameContains) }
    }
}

// @DataContract()
public class QueryJobApplicationComments : QueryDb<JobApplicationComment>, IReturn
{
    public typealias Return = QueryResponse<JobApplicationComment>

    // @DataMember(Order=1)
    public var jobApplicationId:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case jobApplicationId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
    }
}

/**
* Find Bookings
*/
// @Route("/bookings", "GET")
// @Route("/bookings/{Id}", "GET")
// @DataContract()
public class QueryBookings : QueryDb<Booking>, IReturn
{
    public typealias Return = QueryResponse<Booking>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

/**
* Find Coupons
*/
// @Route("/coupons", "GET")
// @DataContract()
public class QueryCoupons : QueryDb<Coupon>, IReturn
{
    public typealias Return = QueryResponse<Coupon>

    // @DataMember(Order=1)
    public var id:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(String.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @DataContract()
public class QueryFileSystemItems : QueryDb<FileSystemItem>, IReturn
{
    public typealias Return = QueryResponse<FileSystemItem>

    // @DataMember(Order=1)
    public var appUserId:Int?

    // @DataMember(Order=2)
    public var fileAccessType:FileAccessType?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case appUserId
        case fileAccessType
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        appUserId = try container.decodeIfPresent(Int.self, forKey: .appUserId)
        fileAccessType = try container.decodeIfPresent(FileAccessType.self, forKey: .fileAccessType)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if appUserId != nil { try container.encode(appUserId, forKey: .appUserId) }
        if fileAccessType != nil { try container.encode(fileAccessType, forKey: .fileAccessType) }
    }
}

// @DataContract()
public class QueryFileSystemFiles : QueryDb<FileSystemFile>, IReturn
{
    public typealias Return = QueryResponse<FileSystemFile>

    required public init(){ super.init() }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
    }
}

// @DataContract()
public class QueryPlayer : QueryDb<Player>, IReturn
{
    public typealias Return = QueryResponse<Player>

    required public init(){ super.init() }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
    }
}

// @DataContract()
public class QueryProfile : QueryDb<Profile>, IReturn
{
    public typealias Return = QueryResponse<Profile>

    required public init(){ super.init() }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
    }
}

// @DataContract()
public class QueryGameItem : QueryDb<GameItem>, IReturn
{
    public typealias Return = QueryResponse<GameItem>

    // @DataMember(Order=1)
    public var name:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case name
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decodeIfPresent(String.self, forKey: .name)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if name != nil { try container.encode(name, forKey: .name) }
    }
}

// @DataContract()
public class QueryPlayerGameItem : QueryDb<PlayerGameItem>, IReturn
{
    public typealias Return = QueryResponse<PlayerGameItem>

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var playerId:Int?

    // @DataMember(Order=3)
    public var gameItemName:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case playerId
        case gameItemName
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        playerId = try container.decodeIfPresent(Int.self, forKey: .playerId)
        gameItemName = try container.decodeIfPresent(String.self, forKey: .gameItemName)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if playerId != nil { try container.encode(playerId, forKey: .playerId) }
        if gameItemName != nil { try container.encode(gameItemName, forKey: .gameItemName) }
    }
}

// @DataContract()
public class QueryLevel : QueryDb<Level>, IReturn
{
    public typealias Return = QueryResponse<Level>

    // @DataMember(Order=1)
    public var id:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(String.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/todos", "GET")
// @DataContract()
public class QueryTodos : QueryDb<Todo>, IReturn
{
    public typealias Return = QueryResponse<Todo>

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var ids:[Int]?

    // @DataMember(Order=3)
    public var textContains:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case ids
        case textContains
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        ids = try container.decodeIfPresent([Int].self, forKey: .ids) ?? []
        textContains = try container.decodeIfPresent(String.self, forKey: .textContains)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if ids != nil && ids!.count > 0 { try container.encode(ids, forKey: .ids) }
        if textContains != nil { try container.encode(textContains, forKey: .textContains) }
    }
}

// @Route("/apikeys", "GET")
// @Route("/apikeys/{Id}", "GET")
// @DataContract
public class QueryApiKeys : QueryDb<ApiKey>, IReturn, IGet
{
    public typealias Return = QueryResponse<ApiKey>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/aspnetroleclaims", "GET")
// @Route("/aspnetroleclaims/{Id}", "GET")
// @DataContract
public class QueryAspNetRoleClaims : QueryDb<AspNetRoleClaims>, IReturn, IGet
{
    public typealias Return = QueryResponse<AspNetRoleClaims>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/aspnetroles", "GET")
// @Route("/aspnetroles/{Id}", "GET")
// @DataContract
public class QueryAspNetRoles : QueryDb<AspNetRoles>, IReturn, IGet
{
    public typealias Return = QueryResponse<AspNetRoles>

    // @DataMember(Order=1)
    public var id:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(String.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/aspnetuserclaims", "GET")
// @Route("/aspnetuserclaims/{Id}", "GET")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class QueryAspNetUserClaims : QueryDb<AspNetUserClaims>, IReturn, IGet
{
    public typealias Return = QueryResponse<AspNetUserClaims>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/aspnetusers", "GET")
// @Route("/aspnetusers/{Id}", "GET")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class QueryAspNetUsers : QueryDb<AspNetUsers>, IReturn, IGet
{
    public typealias Return = QueryResponse<AspNetUsers>

    // @DataMember(Order=1)
    public var id:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(String.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/crudevents", "GET")
// @Route("/crudevents/{Id}", "GET")
// @DataContract
public class QueryCrudEvents : QueryDb<CrudEvent>, IReturn, IGet
{
    public typealias Return = QueryResponse<CrudEvent>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/efmigrationshistories", "GET")
// @Route("/efmigrationshistories/{MigrationId}", "GET")
// @DataContract
public class QueryEFMigrationsHistories : QueryDb<EFMigrationsHistory>, IReturn, IGet
{
    public typealias Return = QueryResponse<EFMigrationsHistory>

    // @DataMember(Order=1)
    public var migrationId:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case migrationId
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        migrationId = try container.decodeIfPresent(String.self, forKey: .migrationId)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if migrationId != nil { try container.encode(migrationId, forKey: .migrationId) }
    }
}

// @Route("/migrations", "GET")
// @Route("/migrations/{Id}", "GET")
// @DataContract
public class QueryMigrations : QueryDb<Migration>, IReturn, IGet
{
    public typealias Return = QueryResponse<Migration>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/validationrules", "GET")
// @Route("/validationrules/{Id}", "GET")
// @DataContract
public class QueryValidationRules : QueryDb<ValidationRule>, IReturn, IGet
{
    public typealias Return = QueryResponse<ValidationRule>

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
    }
}

// @Route("/albums", "POST")
// @DataContract()
public class CreateAlbums : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var title:String?

    // @DataMember(Order=2)
    // @Validate(Validator="GreaterThan(0)")
    public var artistId:Int?

    required public init(){}
}

// @Route("/artists", "POST")
// @DataContract()
public class CreateArtists : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @Route("/chinook/customers", "POST")
// @DataContract()
public class CreateChinookCustomer : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var firstName:String?

    // @DataMember(Order=2)
    public var lastName:String?

    // @DataMember(Order=3)
    public var company:String?

    // @DataMember(Order=4)
    public var address:String?

    // @DataMember(Order=5)
    public var city:String?

    // @DataMember(Order=6)
    public var state:String?

    // @DataMember(Order=7)
    public var country:String?

    // @DataMember(Order=8)
    public var postalCode:String?

    // @DataMember(Order=9)
    public var phone:String?

    // @DataMember(Order=10)
    public var fax:String?

    // @DataMember(Order=11)
    public var email:String?

    // @DataMember(Order=12)
    public var supportRepId:Int?

    required public init(){}
}

// @Route("/chinook/employees", "POST")
// @DataContract()
public class CreateChinookEmployee : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var lastName:String?

    // @DataMember(Order=2)
    public var firstName:String?

    // @DataMember(Order=3)
    public var title:String?

    // @DataMember(Order=4)
    public var reportsTo:Int?

    // @DataMember(Order=5)
    public var birthDate:Date?

    // @DataMember(Order=6)
    public var hireDate:Date?

    // @DataMember(Order=7)
    public var address:String?

    // @DataMember(Order=8)
    public var city:String?

    // @DataMember(Order=9)
    public var state:String?

    // @DataMember(Order=10)
    public var country:String?

    // @DataMember(Order=11)
    public var postalCode:String?

    // @DataMember(Order=12)
    public var phone:String?

    // @DataMember(Order=13)
    public var fax:String?

    // @DataMember(Order=14)
    public var email:String?

    required public init(){}
}

// @Route("/genres", "POST")
// @DataContract()
public class CreateGenres : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var name:String?

    required public init(){}
}

// @Route("/invoiceitems", "POST")
// @DataContract()
public class CreateInvoiceItems : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var invoiceId:Int?

    // @DataMember(Order=2)
    public var trackId:Int?

    // @DataMember(Order=3)
    public var unitPrice:Double?

    // @DataMember(Order=4)
    public var quantity:Int?

    required public init(){}
}

// @Route("/invoices", "POST")
// @DataContract()
public class CreateInvoices : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var customerId:Int?

    // @DataMember(Order=2)
    public var invoiceDate:Date?

    // @DataMember(Order=3)
    public var billingAddress:String?

    // @DataMember(Order=4)
    public var billingCity:String?

    // @DataMember(Order=5)
    public var billingState:String?

    // @DataMember(Order=6)
    public var billingCountry:String?

    // @DataMember(Order=7)
    public var billingPostalCode:String?

    // @DataMember(Order=8)
    public var total:Double?

    required public init(){}
}

// @Route("/mediatypes", "POST")
// @DataContract()
public class CreateMediaTypes : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @Route("/playlists", "POST")
// @DataContract()
public class CreatePlaylists : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @Route("/tracks", "POST")
// @DataContract()
public class CreateTracks : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var name:String?

    // @DataMember(Order=2)
    public var albumId:Int?

    // @DataMember(Order=3)
    public var mediaTypeId:Int?

    // @DataMember(Order=4)
    public var genreId:Int?

    // @DataMember(Order=5)
    public var composer:String?

    // @DataMember(Order=6)
    public var milliseconds:Int?

    // @DataMember(Order=7)
    public var bytes:Int?

    // @DataMember(Order=8)
    public var unitPrice:Double?

    required public init(){}
}

// @Route("/albums/{AlbumId}", "DELETE")
// @DataContract()
public class DeleteAlbums : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var albumId:Int?

    required public init(){}
}

// @Route("/artists/{ArtistId}", "DELETE")
// @DataContract()
public class DeleteArtists : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var artistId:Int?

    required public init(){}
}

// @Route("/chinook/customers/{CustomerId}", "DELETE")
// @DataContract()
public class DeleteChinookCustomer : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var customerId:Int?

    required public init(){}
}

// @Route("/chinook/employees/{EmployeeId}", "DELETE")
// @DataContract()
public class DeleteChinookEmployee : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var employeeId:Int?

    required public init(){}
}

// @Route("/genres/{GenreId}", "DELETE")
// @DataContract()
public class DeleteGenres : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var genreId:Int?

    required public init(){}
}

// @Route("/invoiceitems/{InvoiceLineId}", "DELETE")
// @DataContract()
public class DeleteInvoiceItems : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var invoiceLineId:Int?

    required public init(){}
}

// @Route("/invoices/{InvoiceId}", "DELETE")
// @DataContract()
public class DeleteInvoices : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var invoiceId:Int?

    required public init(){}
}

// @Route("/mediatypes/{MediaTypeId}", "DELETE")
// @DataContract()
public class DeleteMediaTypes : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var mediaTypeId:Int?

    required public init(){}
}

// @Route("/playlists/{PlaylistId}", "DELETE")
// @DataContract()
public class DeletePlaylists : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var playlistId:Int?

    required public init(){}
}

// @Route("/tracks/{TrackId}", "DELETE")
// @DataContract()
public class DeleteTracks : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var trackId:Int?

    required public init(){}
}

// @Route("/albums/{AlbumId}", "PATCH")
// @DataContract()
public class PatchAlbums : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var albumId:Int?

    // @DataMember(Order=2)
    public var title:String?

    // @DataMember(Order=3)
    public var artistId:Int?

    required public init(){}
}

// @Route("/artists/{ArtistId}", "PATCH")
// @DataContract()
public class PatchArtists : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var artistId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @Route("/chinook/customers/{CustomerId}", "PATCH")
// @DataContract()
public class PatchChinookCustomer : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var customerId:Int?

    // @DataMember(Order=2)
    public var firstName:String?

    // @DataMember(Order=3)
    public var lastName:String?

    // @DataMember(Order=4)
    public var company:String?

    // @DataMember(Order=5)
    public var address:String?

    // @DataMember(Order=6)
    public var city:String?

    // @DataMember(Order=7)
    public var state:String?

    // @DataMember(Order=8)
    public var country:String?

    // @DataMember(Order=9)
    public var postalCode:String?

    // @DataMember(Order=10)
    public var phone:String?

    // @DataMember(Order=11)
    public var fax:String?

    // @DataMember(Order=12)
    public var email:String?

    // @DataMember(Order=13)
    public var supportRepId:Int?

    required public init(){}
}

// @Route("/chinook/employees/{EmployeeId}", "PATCH")
// @DataContract()
public class PatchChinookEmployee : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var employeeId:Int?

    // @DataMember(Order=2)
    public var lastName:String?

    // @DataMember(Order=3)
    public var firstName:String?

    // @DataMember(Order=4)
    public var title:String?

    // @DataMember(Order=5)
    public var reportsTo:Int?

    // @DataMember(Order=6)
    public var birthDate:Date?

    // @DataMember(Order=7)
    public var hireDate:Date?

    // @DataMember(Order=8)
    public var address:String?

    // @DataMember(Order=9)
    public var city:String?

    // @DataMember(Order=10)
    public var state:String?

    // @DataMember(Order=11)
    public var country:String?

    // @DataMember(Order=12)
    public var postalCode:String?

    // @DataMember(Order=13)
    public var phone:String?

    // @DataMember(Order=14)
    public var fax:String?

    // @DataMember(Order=15)
    public var email:String?

    required public init(){}
}

// @Route("/genres/{GenreId}", "PATCH")
// @DataContract()
public class PatchGenres : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var genreId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @Route("/invoiceitems/{InvoiceLineId}", "PATCH")
// @DataContract()
public class PatchInvoiceItems : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var invoiceLineId:Int?

    // @DataMember(Order=2)
    public var invoiceId:Int?

    // @DataMember(Order=3)
    public var trackId:Int?

    // @DataMember(Order=4)
    public var unitPrice:Double?

    // @DataMember(Order=5)
    public var quantity:Int?

    required public init(){}
}

// @Route("/invoices/{InvoiceId}", "PATCH")
// @DataContract()
public class PatchInvoices : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var invoiceId:Int?

    // @DataMember(Order=2)
    public var customerId:Int?

    // @DataMember(Order=3)
    public var invoiceDate:Date?

    // @DataMember(Order=4)
    public var billingAddress:String?

    // @DataMember(Order=5)
    public var billingCity:String?

    // @DataMember(Order=6)
    public var billingState:String?

    // @DataMember(Order=7)
    public var billingCountry:String?

    // @DataMember(Order=8)
    public var billingPostalCode:String?

    // @DataMember(Order=9)
    public var total:Double?

    required public init(){}
}

// @Route("/mediatypes/{MediaTypeId}", "PATCH")
// @DataContract()
public class PatchMediaTypes : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var mediaTypeId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @Route("/playlists/{PlaylistId}", "PATCH")
// @DataContract()
public class PatchPlaylists : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var playlistId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @Route("/tracks/{TrackId}", "PATCH")
// @DataContract()
public class PatchTracks : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var trackId:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var albumId:Int?

    // @DataMember(Order=4)
    public var mediaTypeId:Int?

    // @DataMember(Order=5)
    public var genreId:Int?

    // @DataMember(Order=6)
    public var composer:String?

    // @DataMember(Order=7)
    public var milliseconds:Int?

    // @DataMember(Order=8)
    public var bytes:Int?

    // @DataMember(Order=9)
    public var unitPrice:Double?

    required public init(){}
}

// @Route("/albums/{AlbumId}", "PUT")
// @DataContract()
public class UpdateAlbums : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var albumId:Int?

    // @DataMember(Order=2)
    public var title:String?

    // @DataMember(Order=3)
    public var artistId:Int?

    required public init(){}
}

// @Route("/artists/{ArtistId}", "PUT")
// @DataContract()
public class UpdateArtists : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var artistId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @Route("/chinook/customers/{CustomerId}", "PUT")
// @DataContract()
public class UpdateChinookCustomer : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var customerId:Int?

    // @DataMember(Order=2)
    public var firstName:String?

    // @DataMember(Order=3)
    public var lastName:String?

    // @DataMember(Order=4)
    public var company:String?

    // @DataMember(Order=5)
    public var address:String?

    // @DataMember(Order=6)
    public var city:String?

    // @DataMember(Order=7)
    public var state:String?

    // @DataMember(Order=8)
    public var country:String?

    // @DataMember(Order=9)
    public var postalCode:String?

    // @DataMember(Order=10)
    public var phone:String?

    // @DataMember(Order=11)
    public var fax:String?

    // @DataMember(Order=12)
    public var email:String?

    // @DataMember(Order=13)
    public var supportRepId:Int?

    required public init(){}
}

// @Route("/chinook/employees/{EmployeeId}", "PUT")
// @DataContract()
public class UpdateChinookEmployee : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var employeeId:Int?

    // @DataMember(Order=2)
    public var lastName:String?

    // @DataMember(Order=3)
    public var firstName:String?

    // @DataMember(Order=4)
    public var title:String?

    // @DataMember(Order=5)
    public var reportsTo:Int?

    // @DataMember(Order=6)
    public var birthDate:Date?

    // @DataMember(Order=7)
    public var hireDate:Date?

    // @DataMember(Order=8)
    public var address:String?

    // @DataMember(Order=9)
    public var city:String?

    // @DataMember(Order=10)
    public var state:String?

    // @DataMember(Order=11)
    public var country:String?

    // @DataMember(Order=12)
    public var postalCode:String?

    // @DataMember(Order=13)
    public var phone:String?

    // @DataMember(Order=14)
    public var fax:String?

    // @DataMember(Order=15)
    public var email:String?

    required public init(){}
}

// @Route("/genres/{GenreId}", "PUT")
// @DataContract()
public class UpdateGenres : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var genreId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @Route("/invoiceitems/{InvoiceLineId}", "PUT")
// @DataContract()
public class UpdateInvoiceItems : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var invoiceLineId:Int?

    // @DataMember(Order=2)
    public var invoiceId:Int?

    // @DataMember(Order=3)
    public var trackId:Int?

    // @DataMember(Order=4)
    public var unitPrice:Double?

    // @DataMember(Order=5)
    public var quantity:Int?

    required public init(){}
}

// @Route("/invoices/{InvoiceId}", "PUT")
// @DataContract()
public class UpdateInvoices : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var invoiceId:Int?

    // @DataMember(Order=2)
    public var customerId:Int?

    // @DataMember(Order=3)
    public var invoiceDate:Date?

    // @DataMember(Order=4)
    public var billingAddress:String?

    // @DataMember(Order=5)
    public var billingCity:String?

    // @DataMember(Order=6)
    public var billingState:String?

    // @DataMember(Order=7)
    public var billingCountry:String?

    // @DataMember(Order=8)
    public var billingPostalCode:String?

    // @DataMember(Order=9)
    public var total:Double?

    required public init(){}
}

// @Route("/mediatypes/{MediaTypeId}", "PUT")
// @DataContract()
public class UpdateMediaTypes : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var mediaTypeId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @Route("/playlists/{PlaylistId}", "PUT")
// @DataContract()
public class UpdatePlaylists : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var playlistId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @Route("/tracks/{TrackId}", "PUT")
// @DataContract()
public class UpdateTracks : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var trackId:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var albumId:Int?

    // @DataMember(Order=4)
    public var mediaTypeId:Int?

    // @DataMember(Order=5)
    public var genreId:Int?

    // @DataMember(Order=6)
    public var composer:String?

    // @DataMember(Order=7)
    public var milliseconds:Int?

    // @DataMember(Order=8)
    public var bytes:Int?

    // @DataMember(Order=9)
    public var unitPrice:Double?

    required public init(){}
}

// @DataContract()
public class CreateContact : IReturn, Codable
{
    public typealias Return = Contact

    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var firstName:String?

    // @DataMember(Order=2)
    // @Validate(Validator="NotEmpty")
    public var lastName:String?

    // @DataMember(Order=3)
    public var profileUrl:String?

    // @DataMember(Order=4)
    public var salaryExpectation:Int?

    // @DataMember(Order=5)
    // @Validate(Validator="NotEmpty")
    public var jobType:String?

    // @DataMember(Order=6)
    public var availabilityWeeks:Int?

    // @DataMember(Order=7)
    public var preferredWorkType:EmploymentType?

    // @DataMember(Order=8)
    // @Validate(Validator="NotEmpty")
    public var preferredLocation:String?

    // @DataMember(Order=9)
    // @Validate(Validator="NotEmpty")
    public var email:String?

    // @DataMember(Order=10)
    public var phone:String?

    // @DataMember(Order=11)
    public var about:String?

    required public init(){}
}

// @DataContract()
public class UpdateContact : IReturn, Codable
{
    public typealias Return = Contact

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    // @Validate(Validator="NotEmpty")
    public var firstName:String?

    // @DataMember(Order=3)
    // @Validate(Validator="NotEmpty")
    public var lastName:String?

    // @DataMember(Order=4)
    public var profileUrl:String?

    // @DataMember(Order=5)
    public var salaryExpectation:Int?

    // @DataMember(Order=6)
    // @Validate(Validator="NotEmpty")
    public var jobType:String?

    // @DataMember(Order=7)
    public var availabilityWeeks:Int?

    // @DataMember(Order=8)
    public var preferredWorkType:EmploymentType?

    // @DataMember(Order=9)
    public var preferredLocation:String?

    // @DataMember(Order=10)
    // @Validate(Validator="NotEmpty")
    public var email:String?

    // @DataMember(Order=11)
    public var phone:String?

    // @DataMember(Order=12)
    public var about:String?

    required public init(){}
}

// @DataContract()
public class DeleteContact : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class CreateJob : IReturn, Codable
{
    public typealias Return = Job

    // @DataMember(Order=1)
    public var title:String?

    // @DataMember(Order=2)
    // @Validate(Validator="GreaterThan(0)")
    public var salaryRangeLower:Int?

    // @DataMember(Order=3)
    // @Validate(Validator="GreaterThan(0)")
    public var salaryRangeUpper:Int?

    // @DataMember(Order=4)
    public var Description:String?

    // @DataMember(Order=5)
    public var employmentType:EmploymentType?

    // @DataMember(Order=6)
    public var company:String?

    // @DataMember(Order=7)
    public var location:String?

    // @DataMember(Order=8)
    public var closing:Date?

    required public init(){}
}

// @DataContract()
public class UpdateJob : IReturn, Codable
{
    public typealias Return = Job

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var title:String?

    // @DataMember(Order=3)
    public var salaryRangeLower:Int?

    // @DataMember(Order=4)
    public var salaryRangeUpper:Int?

    // @DataMember(Order=5)
    public var Description:String?

    required public init(){}
}

// @DataContract()
public class DeleteJob : IReturn, Codable
{
    public typealias Return = Job

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class CreateJobApplication : IReturn, Codable
{
    public typealias Return = JobApplication

    // @DataMember(Order=1)
    // @Validate(Validator="GreaterThan(0)")
    public var jobId:Int?

    // @DataMember(Order=2)
    // @Validate(Validator="GreaterThan(0)")
    public var contactId:Int?

    // @DataMember(Order=3)
    public var appliedDate:Date?

    // @DataMember(Order=4)
    public var applicationStatus:JobApplicationStatus?

    // @DataMember(Order=5)
    public var attachments:[JobApplicationAttachment]?

    required public init(){}
}

// @DataContract()
public class UpdateJobApplication : IReturn, Codable
{
    public typealias Return = JobApplication

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var jobId:Int?

    // @DataMember(Order=3)
    public var contactId:Int?

    // @DataMember(Order=4)
    public var appliedDate:Date?

    // @DataMember(Order=5)
    public var applicationStatus:JobApplicationStatus?

    // @DataMember(Order=6)
    public var attachments:[JobApplicationAttachment]?

    required public init(){}
}

// @DataContract()
public class DeleteJobApplication : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class CreateJobApplicationEvent : IReturn, Codable
{
    public typealias Return = JobApplicationEvent

    required public init(){}
}

// @DataContract()
public class UpdateJobApplicationEvent : IReturn, Codable
{
    public typealias Return = JobApplicationEvent

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var status:JobApplicationStatus?

    // @DataMember(Order=3)
    public var Description:String?

    // @DataMember(Order=4)
    public var eventDate:Date?

    required public init(){}
}

// @DataContract()
public class DeleteJobApplicationEvent : IReturnVoid, Codable
{
    required public init(){}
}

// @DataContract()
public class CreateJobApplicationComment : IReturn, Codable
{
    public typealias Return = JobApplicationComment

    // @DataMember(Order=1)
    // @Validate(Validator="GreaterThan(0)")
    public var jobApplicationId:Int?

    // @DataMember(Order=2)
    // @Validate(Validator="NotEmpty")
    public var comment:String?

    required public init(){}
}

// @DataContract()
public class UpdateJobApplicationComment : IReturn, Codable
{
    public typealias Return = JobApplicationComment

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var jobApplicationId:Int?

    // @DataMember(Order=3)
    public var comment:String?

    required public init(){}
}

// @DataContract()
public class DeleteJobApplicationComment : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

/**
* Create a new Booking
*/
// @Route("/bookings", "POST")
// @ValidateRequest(Validator="HasRole(`Employee`)")
// @DataContract()
public class CreateBooking : IReturn, Codable
{
    public typealias Return = IdResponse

    /**
    * Name this Booking is for
    */
    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var name:String?

    // @DataMember(Order=2)
    public var roomType:RoomType?

    // @DataMember(Order=3)
    // @Validate(Validator="GreaterThan(0)")
    public var roomNumber:Int?

    // @DataMember(Order=4)
    // @Validate(Validator="GreaterThan(0)")
    public var cost:Double?

    // @DataMember(Order=5)
    // @Required()
    public var bookingStartDate:Date?

    // @DataMember(Order=6)
    public var bookingEndDate:Date?

    // @DataMember(Order=7)
    public var notes:String?

    // @DataMember(Order=8)
    public var couponId:String?

    required public init(){}
}

/**
* Update an existing Booking
*/
// @Route("/booking/{Id}", "PATCH")
// @ValidateRequest(Validator="HasRole(`Employee`)")
// @DataContract()
public class UpdateBooking : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var roomType:RoomType?

    // @DataMember(Order=4)
    // @Validate(Validator="GreaterThan(0)")
    public var roomNumber:Int?

    // @DataMember(Order=5)
    // @Validate(Validator="GreaterThan(0)")
    public var cost:Double?

    // @DataMember(Order=6)
    public var bookingStartDate:Date?

    // @DataMember(Order=7)
    public var bookingEndDate:Date?

    // @DataMember(Order=8)
    public var notes:String?

    // @DataMember(Order=9)
    public var couponId:String?

    // @DataMember(Order=10)
    public var cancelled:Bool?

    required public init(){}
}

/**
* Delete a Booking
*/
// @Route("/booking/{Id}", "DELETE")
// @ValidateRequest(Validator="HasRole(`Manager`)")
// @DataContract()
public class DeleteBooking : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/coupons", "POST")
// @ValidateRequest(Validator="HasRole(`Employee`)")
// @DataContract()
public class CreateCoupon : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var Description:String?

    // @DataMember(Order=2)
    // @Validate(Validator="GreaterThan(0)")
    public var discount:Int?

    // @DataMember(Order=3)
    // @Validate(Validator="NotNull")
    public var expiryDate:Date?

    required public init(){}
}

// @Route("/coupons/{Id}", "PATCH")
// @ValidateRequest(Validator="HasRole(`Employee`)")
// @DataContract()
public class UpdateCoupon : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    // @Validate(Validator="NotEmpty")
    public var Description:String?

    // @DataMember(Order=3)
    // @Validate(Validator="NotNull")
    // @Validate(Validator="GreaterThan(0)")
    public var discount:Int?

    // @DataMember(Order=4)
    // @Validate(Validator="NotNull")
    public var expiryDate:Date?

    required public init(){}
}

/**
* Delete a Coupon
*/
// @Route("/coupons/{Id}", "DELETE")
// @ValidateRequest(Validator="HasRole(`Manager`)")
// @DataContract()
public class DeleteCoupon : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:String?

    required public init(){}
}

// @DataContract()
public class CreateFileSystemItem : IReturn, IFileItem, Codable
{
    public typealias Return = FileSystemItem

    // @DataMember(Order=1)
    public var fileAccessType:FileAccessType?

    // @DataMember(Order=2)
    public var file:FileSystemFile?

    required public init(){}
}

// @DataContract()
public class CreatePlayer : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var firstName:String?

    // @DataMember(Order=2)
    public var lastName:String?

    // @DataMember(Order=3)
    public var email:String?

    // @DataMember(Order=4)
    public var phoneNumbers:[Phone]?

    // @DataMember(Order=5)
    // @Validate(Validator="NotNull")
    public var profileId:Int?

    // @DataMember(Order=6)
    public var savedLevelId:String?

    required public init(){}
}

// @DataContract()
public class UpdatePlayer : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    // @Validate(Validator="NotEmpty")
    public var firstName:String?

    // @DataMember(Order=3)
    public var lastName:String?

    // @DataMember(Order=4)
    public var email:String?

    // @DataMember(Order=5)
    public var phoneNumbers:[Phone]?

    // @DataMember(Order=6)
    public var profileId:Int?

    // @DataMember(Order=7)
    public var savedLevelId:String?

    // @DataMember(Order=8)
    public var capital:String?

    required public init(){}
}

// @DataContract()
public class DeletePlayer : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class CreateProfile : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var role:PlayerRole?

    // @DataMember(Order=2)
    public var region:PlayerRegion?

    // @DataMember(Order=3)
    // @Validate(Validator="NotEmpty")
    public var username:String?

    // @DataMember(Order=4)
    public var highScore:Int?

    // @DataMember(Order=5)
    public var gamesPlayed:Int?

    // @DataMember(Order=6)
    // @Validate(Validator="InclusiveBetween(0,100)")
    public var energy:Int?

    // @DataMember(Order=7)
    public var profileUrl:String?

    // @DataMember(Order=8)
    public var coverUrl:String?

    required public init(){}
}

// @DataContract()
public class UpdateProfile : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var role:PlayerRole?

    // @DataMember(Order=3)
    public var region:PlayerRegion?

    // @DataMember(Order=4)
    public var username:String?

    // @DataMember(Order=5)
    public var highScore:Int?

    // @DataMember(Order=6)
    public var gamesPlayed:Int?

    // @DataMember(Order=7)
    // @Validate(Validator="InclusiveBetween(0,100)")
    public var energy:Int?

    // @DataMember(Order=8)
    public var profileUrl:String?

    // @DataMember(Order=9)
    public var coverUrl:String?

    required public init(){}
}

// @DataContract()
public class DeleteProfile : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @DataContract()
public class CreateGameItem : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var name:String?

    // @DataMember(Order=2)
    // @Validate(Validator="NotEmpty")
    public var Description:String?

    // @DataMember(Order=3)
    // @Validate(Validator="NotEmpty")
    public var imageUrl:String?

    required public init(){}
}

// @DataContract()
public class UpdateGameItem : IReturn, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var name:String?

    // @DataMember(Order=2)
    // @Validate(Validator="NotEmpty")
    public var Description:String?

    // @DataMember(Order=3)
    public var imageUrl:String?

    required public init(){}
}

// @DataContract()
public class DeleteGameItem : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var name:String?

    required public init(){}
}

// @Route("/todos", "POST")
// @DataContract()
public class CreateTodo : IReturn, Codable
{
    public typealias Return = Todo

    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var text:String?

    // @DataMember(Order=2)
    public var isFinished:Bool?

    required public init(){}
}

// @Route("/todos/{Id}", "PUT")
// @DataContract()
public class UpdateTodo : IReturn, Codable
{
    public typealias Return = Todo

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    // @Validate(Validator="NotEmpty")
    public var text:String?

    // @DataMember(Order=3)
    public var isFinished:Bool?

    required public init(){}
}

// @Route("/todos", "DELETE")
// @Route("/todos/{Id}", "DELETE")
// @DataContract()
public class DeleteTodos : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var ids:[Int]?

    required public init(){}
}

// @DataContract()
public class DeleteTodo : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var ids:[Int]?

    required public init(){}
}

// @DataContract()
public class CreateMqBooking : AuditBase, IReturn
{
    public typealias Return = IdResponse

    /**
    * Name this Booking is for
    */
    // @DataMember(Order=1)
    // @Validate(Validator="NotEmpty")
    public var name:String?

    // @DataMember(Order=2)
    public var roomType:RoomType?

    // @DataMember(Order=3)
    // @Validate(Validator="GreaterThan(0)")
    public var roomNumber:Int?

    // @DataMember(Order=4)
    // @Validate(Validator="GreaterThan(0)")
    public var cost:Double?

    // @DataMember(Order=5)
    public var bookingStartDate:Date?

    // @DataMember(Order=6)
    public var bookingEndDate:Date?

    // @DataMember(Order=7)
    public var notes:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case name
        case roomType
        case roomNumber
        case cost
        case bookingStartDate
        case bookingEndDate
        case notes
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        roomType = try container.decodeIfPresent(RoomType.self, forKey: .roomType)
        roomNumber = try container.decodeIfPresent(Int.self, forKey: .roomNumber)
        cost = try container.decodeIfPresent(Double.self, forKey: .cost)
        bookingStartDate = try container.decodeIfPresent(Date.self, forKey: .bookingStartDate)
        bookingEndDate = try container.decodeIfPresent(Date.self, forKey: .bookingEndDate)
        notes = try container.decodeIfPresent(String.self, forKey: .notes)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if name != nil { try container.encode(name, forKey: .name) }
        if roomType != nil { try container.encode(roomType, forKey: .roomType) }
        if roomNumber != nil { try container.encode(roomNumber, forKey: .roomNumber) }
        if cost != nil { try container.encode(cost, forKey: .cost) }
        if bookingStartDate != nil { try container.encode(bookingStartDate, forKey: .bookingStartDate) }
        if bookingEndDate != nil { try container.encode(bookingEndDate, forKey: .bookingEndDate) }
        if notes != nil { try container.encode(notes, forKey: .notes) }
    }
}

// @Route("/apikeys", "POST")
// @DataContract
public class CreateApiKey : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=2)
    public var key:String?

    // @DataMember(Order=3)
    public var name:String?

    // @DataMember(Order=4)
    public var userId:String?

    // @DataMember(Order=5)
    public var userName:String?

    // @DataMember(Order=6)
    public var visibleKey:String?

    // @DataMember(Order=7)
    public var createdDate:String?

    // @DataMember(Order=8)
    public var expiryDate:String?

    // @DataMember(Order=9)
    public var cancelledDate:String?

    // @DataMember(Order=10)
    public var lastUsedDate:String?

    // @DataMember(Order=11)
    public var scopes:String?

    // @DataMember(Order=12)
    public var features:String?

    // @DataMember(Order=13)
    public var restrictTo:String?

    // @DataMember(Order=14)
    public var environment:String?

    // @DataMember(Order=15)
    public var notes:String?

    // @DataMember(Order=16)
    public var refId:Int?

    // @DataMember(Order=17)
    public var refIdStr:String?

    // @DataMember(Order=18)
    public var meta:String?

    required public init(){}
}

// @Route("/aspnetroleclaims", "POST")
// @DataContract
public class CreateAspNetRoleClaims : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=2)
    public var roleId:String?

    // @DataMember(Order=3)
    public var claimType:String?

    // @DataMember(Order=4)
    public var claimValue:String?

    required public init(){}
}

// @Route("/aspnetroles", "POST")
// @DataContract
public class CreateAspNetRoles : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var normalizedName:String?

    // @DataMember(Order=4)
    public var concurrencyStamp:String?

    required public init(){}
}

// @Route("/aspnetuserclaims", "POST")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class CreateAspNetUserClaims : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=2)
    public var userId:String?

    // @DataMember(Order=3)
    public var claimType:String?

    // @DataMember(Order=4)
    public var claimValue:String?

    required public init(){}
}

// @Route("/aspnetusers", "POST")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class CreateAspNetUsers : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var firstName:String?

    // @DataMember(Order=3)
    public var lastName:String?

    // @DataMember(Order=4)
    public var displayName:String?

    // @DataMember(Order=5)
    public var profileUrl:String?

    // @DataMember(Order=6)
    public var refreshToken:String?

    // @DataMember(Order=7)
    public var refreshTokenExpiry:String?

    // @DataMember(Order=8)
    public var userName:String?

    // @DataMember(Order=9)
    public var normalizedUserName:String?

    // @DataMember(Order=10)
    public var email:String?

    // @DataMember(Order=11)
    public var normalizedEmail:String?

    // @DataMember(Order=12)
    public var emailConfirmed:Int?

    // @DataMember(Order=13)
    public var passwordHash:String?

    // @DataMember(Order=14)
    public var securityStamp:String?

    // @DataMember(Order=15)
    public var concurrencyStamp:String?

    // @DataMember(Order=16)
    public var phoneNumber:String?

    // @DataMember(Order=17)
    public var phoneNumberConfirmed:Int?

    // @DataMember(Order=18)
    public var twoFactorEnabled:Int?

    // @DataMember(Order=19)
    public var lockoutEnd:String?

    // @DataMember(Order=20)
    public var lockoutEnabled:Int?

    // @DataMember(Order=21)
    public var accessFailedCount:Int?

    required public init(){}
}

// @Route("/crudevents", "POST")
// @DataContract
public class CreateCrudEvent : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=2)
    public var eventType:String?

    // @DataMember(Order=3)
    public var model:String?

    // @DataMember(Order=4)
    public var modelId:String?

    // @DataMember(Order=5)
    public var eventDate:String?

    // @DataMember(Order=6)
    public var rowsUpdated:Int?

    // @DataMember(Order=7)
    public var requestType:String?

    // @DataMember(Order=8)
    public var requestBody:String?

    // @DataMember(Order=9)
    public var userAuthId:String?

    // @DataMember(Order=10)
    public var userAuthName:String?

    // @DataMember(Order=11)
    public var remoteIp:String?

    // @DataMember(Order=12)
    public var urn:String?

    // @DataMember(Order=13)
    public var refId:Int?

    // @DataMember(Order=14)
    public var refIdStr:String?

    // @DataMember(Order=15)
    public var meta:String?

    required public init(){}
}

// @Route("/efmigrationshistories", "POST")
// @DataContract
public class CreateEFMigrationsHistory : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var migrationId:String?

    // @DataMember(Order=2)
    public var productVersion:String?

    required public init(){}
}

// @Route("/filesystemfiles", "POST")
// @DataContract
public class CreateFileSystemFile : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=2)
    public var fileName:String?

    // @DataMember(Order=3)
    public var filePath:String?

    // @DataMember(Order=4)
    public var contentType:String?

    // @DataMember(Order=5)
    public var contentLength:Int?

    // @DataMember(Order=6)
    public var fileSystemItemId:Int?

    required public init(){}
}

// @Route("/migrations", "POST")
// @DataContract
public class CreateMigration : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var Description:String?

    // @DataMember(Order=4)
    public var createdDate:String?

    // @DataMember(Order=5)
    public var completedDate:String?

    // @DataMember(Order=6)
    public var connectionString:String?

    // @DataMember(Order=7)
    public var namedConnection:String?

    // @DataMember(Order=8)
    public var log:String?

    // @DataMember(Order=9)
    public var errorCode:String?

    // @DataMember(Order=10)
    public var errorMessage:String?

    // @DataMember(Order=11)
    public var errorStackTrace:String?

    // @DataMember(Order=12)
    public var meta:String?

    required public init(){}
}

// @Route("/validationrules", "POST")
// @DataContract
public class CreateValidationRule : IReturn, IPost, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=2)
    public var type:String?

    // @DataMember(Order=3)
    public var field:String?

    // @DataMember(Order=4)
    public var createdBy:String?

    // @DataMember(Order=5)
    public var createdDate:String?

    // @DataMember(Order=6)
    public var modifiedBy:String?

    // @DataMember(Order=7)
    public var modifiedDate:String?

    // @DataMember(Order=8)
    public var suspendedBy:String?

    // @DataMember(Order=9)
    public var suspendedDate:String?

    // @DataMember(Order=10)
    public var notes:String?

    // @DataMember(Order=11)
    public var validator:String?

    // @DataMember(Order=12)
    public var condition:String?

    // @DataMember(Order=13)
    public var errorCode:String?

    // @DataMember(Order=14)
    public var message:String?

    required public init(){}
}

// @Route("/apikeys/{Id}", "DELETE")
// @DataContract
public class DeleteApiKey : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/aspnetroleclaims/{Id}", "DELETE")
// @DataContract
public class DeleteAspNetRoleClaims : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/aspnetroles/{Id}", "DELETE")
// @DataContract
public class DeleteAspNetRoles : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    required public init(){}
}

// @Route("/aspnetuserclaims/{Id}", "DELETE")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class DeleteAspNetUserClaims : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/aspnetusers/{Id}", "DELETE")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class DeleteAspNetUsers : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    required public init(){}
}

// @Route("/crudevents/{Id}", "DELETE")
// @DataContract
public class DeleteCrudEvent : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/efmigrationshistories/{MigrationId}", "DELETE")
// @DataContract
public class DeleteEFMigrationsHistory : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var migrationId:String?

    required public init(){}
}

// @Route("/filesystemfiles/{Id}", "DELETE")
// @DataContract
public class DeleteFileSystemFile : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/filesystemitems/{Id}", "DELETE")
// @DataContract
public class DeleteFileSystemItem : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/migrations/{Id}", "DELETE")
// @DataContract
public class DeleteMigration : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/validationrules/{Id}", "DELETE")
// @DataContract
public class DeleteValidationRule : IReturn, IDelete, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @Route("/apikeys/{Id}", "PATCH")
// @DataContract
public class PatchApiKey : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var key:String?

    // @DataMember(Order=3)
    public var name:String?

    // @DataMember(Order=4)
    public var userId:String?

    // @DataMember(Order=5)
    public var userName:String?

    // @DataMember(Order=6)
    public var visibleKey:String?

    // @DataMember(Order=7)
    public var createdDate:String?

    // @DataMember(Order=8)
    public var expiryDate:String?

    // @DataMember(Order=9)
    public var cancelledDate:String?

    // @DataMember(Order=10)
    public var lastUsedDate:String?

    // @DataMember(Order=11)
    public var scopes:String?

    // @DataMember(Order=12)
    public var features:String?

    // @DataMember(Order=13)
    public var restrictTo:String?

    // @DataMember(Order=14)
    public var environment:String?

    // @DataMember(Order=15)
    public var notes:String?

    // @DataMember(Order=16)
    public var refId:Int?

    // @DataMember(Order=17)
    public var refIdStr:String?

    // @DataMember(Order=18)
    public var meta:String?

    required public init(){}
}

// @Route("/aspnetroleclaims/{Id}", "PATCH")
// @DataContract
public class PatchAspNetRoleClaims : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var roleId:String?

    // @DataMember(Order=3)
    public var claimType:String?

    // @DataMember(Order=4)
    public var claimValue:String?

    required public init(){}
}

// @Route("/aspnetroles/{Id}", "PATCH")
// @DataContract
public class PatchAspNetRoles : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var normalizedName:String?

    // @DataMember(Order=4)
    public var concurrencyStamp:String?

    required public init(){}
}

// @Route("/aspnetuserclaims/{Id}", "PATCH")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class PatchAspNetUserClaims : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var userId:String?

    // @DataMember(Order=3)
    public var claimType:String?

    // @DataMember(Order=4)
    public var claimValue:String?

    required public init(){}
}

// @Route("/aspnetusers/{Id}", "PATCH")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class PatchAspNetUsers : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var firstName:String?

    // @DataMember(Order=3)
    public var lastName:String?

    // @DataMember(Order=4)
    public var displayName:String?

    // @DataMember(Order=5)
    public var profileUrl:String?

    // @DataMember(Order=6)
    public var refreshToken:String?

    // @DataMember(Order=7)
    public var refreshTokenExpiry:String?

    // @DataMember(Order=8)
    public var userName:String?

    // @DataMember(Order=9)
    public var normalizedUserName:String?

    // @DataMember(Order=10)
    public var email:String?

    // @DataMember(Order=11)
    public var normalizedEmail:String?

    // @DataMember(Order=12)
    public var emailConfirmed:Int?

    // @DataMember(Order=13)
    public var passwordHash:String?

    // @DataMember(Order=14)
    public var securityStamp:String?

    // @DataMember(Order=15)
    public var concurrencyStamp:String?

    // @DataMember(Order=16)
    public var phoneNumber:String?

    // @DataMember(Order=17)
    public var phoneNumberConfirmed:Int?

    // @DataMember(Order=18)
    public var twoFactorEnabled:Int?

    // @DataMember(Order=19)
    public var lockoutEnd:String?

    // @DataMember(Order=20)
    public var lockoutEnabled:Int?

    // @DataMember(Order=21)
    public var accessFailedCount:Int?

    required public init(){}
}

// @Route("/crudevents/{Id}", "PATCH")
// @DataContract
public class PatchCrudEvent : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var eventType:String?

    // @DataMember(Order=3)
    public var model:String?

    // @DataMember(Order=4)
    public var modelId:String?

    // @DataMember(Order=5)
    public var eventDate:String?

    // @DataMember(Order=6)
    public var rowsUpdated:Int?

    // @DataMember(Order=7)
    public var requestType:String?

    // @DataMember(Order=8)
    public var requestBody:String?

    // @DataMember(Order=9)
    public var userAuthId:String?

    // @DataMember(Order=10)
    public var userAuthName:String?

    // @DataMember(Order=11)
    public var remoteIp:String?

    // @DataMember(Order=12)
    public var urn:String?

    // @DataMember(Order=13)
    public var refId:Int?

    // @DataMember(Order=14)
    public var refIdStr:String?

    // @DataMember(Order=15)
    public var meta:String?

    required public init(){}
}

// @Route("/efmigrationshistories/{MigrationId}", "PATCH")
// @DataContract
public class PatchEFMigrationsHistory : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var migrationId:String?

    // @DataMember(Order=2)
    public var productVersion:String?

    required public init(){}
}

// @Route("/filesystemfiles/{Id}", "PATCH")
// @DataContract
public class PatchFileSystemFile : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var fileName:String?

    // @DataMember(Order=3)
    public var filePath:String?

    // @DataMember(Order=4)
    public var contentType:String?

    // @DataMember(Order=5)
    public var contentLength:Int?

    // @DataMember(Order=6)
    public var fileSystemItemId:Int?

    required public init(){}
}

// @Route("/filesystemitems/{Id}", "PATCH")
// @DataContract
public class PatchFileSystemItem : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var fileAccessType:String?

    // @DataMember(Order=3)
    public var applicationUserId:String?

    required public init(){}
}

// @Route("/migrations/{Id}", "PATCH")
// @DataContract
public class PatchMigration : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var Description:String?

    // @DataMember(Order=4)
    public var createdDate:String?

    // @DataMember(Order=5)
    public var completedDate:String?

    // @DataMember(Order=6)
    public var connectionString:String?

    // @DataMember(Order=7)
    public var namedConnection:String?

    // @DataMember(Order=8)
    public var log:String?

    // @DataMember(Order=9)
    public var errorCode:String?

    // @DataMember(Order=10)
    public var errorMessage:String?

    // @DataMember(Order=11)
    public var errorStackTrace:String?

    // @DataMember(Order=12)
    public var meta:String?

    required public init(){}
}

// @Route("/todos/{Id}", "PATCH")
// @DataContract
public class PatchTodo : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var text:String?

    // @DataMember(Order=3)
    public var isFinished:Int?

    required public init(){}
}

// @Route("/validationrules/{Id}", "PATCH")
// @DataContract
public class PatchValidationRule : IReturn, IPatch, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var type:String?

    // @DataMember(Order=3)
    public var field:String?

    // @DataMember(Order=4)
    public var createdBy:String?

    // @DataMember(Order=5)
    public var createdDate:String?

    // @DataMember(Order=6)
    public var modifiedBy:String?

    // @DataMember(Order=7)
    public var modifiedDate:String?

    // @DataMember(Order=8)
    public var suspendedBy:String?

    // @DataMember(Order=9)
    public var suspendedDate:String?

    // @DataMember(Order=10)
    public var notes:String?

    // @DataMember(Order=11)
    public var validator:String?

    // @DataMember(Order=12)
    public var condition:String?

    // @DataMember(Order=13)
    public var errorCode:String?

    // @DataMember(Order=14)
    public var message:String?

    required public init(){}
}

// @Route("/apikeys/{Id}", "PUT")
// @DataContract
public class UpdateApiKey : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var key:String?

    // @DataMember(Order=3)
    public var name:String?

    // @DataMember(Order=4)
    public var userId:String?

    // @DataMember(Order=5)
    public var userName:String?

    // @DataMember(Order=6)
    public var visibleKey:String?

    // @DataMember(Order=7)
    public var createdDate:String?

    // @DataMember(Order=8)
    public var expiryDate:String?

    // @DataMember(Order=9)
    public var cancelledDate:String?

    // @DataMember(Order=10)
    public var lastUsedDate:String?

    // @DataMember(Order=11)
    public var scopes:String?

    // @DataMember(Order=12)
    public var features:String?

    // @DataMember(Order=13)
    public var restrictTo:String?

    // @DataMember(Order=14)
    public var environment:String?

    // @DataMember(Order=15)
    public var notes:String?

    // @DataMember(Order=16)
    public var refId:Int?

    // @DataMember(Order=17)
    public var refIdStr:String?

    // @DataMember(Order=18)
    public var meta:String?

    required public init(){}
}

// @Route("/aspnetroleclaims/{Id}", "PUT")
// @DataContract
public class UpdateAspNetRoleClaims : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var roleId:String?

    // @DataMember(Order=3)
    public var claimType:String?

    // @DataMember(Order=4)
    public var claimValue:String?

    required public init(){}
}

// @Route("/aspnetroles/{Id}", "PUT")
// @DataContract
public class UpdateAspNetRoles : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var normalizedName:String?

    // @DataMember(Order=4)
    public var concurrencyStamp:String?

    required public init(){}
}

// @Route("/aspnetuserclaims/{Id}", "PUT")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class UpdateAspNetUserClaims : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var userId:String?

    // @DataMember(Order=3)
    public var claimType:String?

    // @DataMember(Order=4)
    public var claimValue:String?

    required public init(){}
}

// @Route("/aspnetusers/{Id}", "PUT")
// @ValidateRequest(Validator="IsAdmin")
// @DataContract
public class UpdateAspNetUsers : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var firstName:String?

    // @DataMember(Order=3)
    public var lastName:String?

    // @DataMember(Order=4)
    public var displayName:String?

    // @DataMember(Order=5)
    public var profileUrl:String?

    // @DataMember(Order=6)
    public var refreshToken:String?

    // @DataMember(Order=7)
    public var refreshTokenExpiry:String?

    // @DataMember(Order=8)
    public var userName:String?

    // @DataMember(Order=9)
    public var normalizedUserName:String?

    // @DataMember(Order=10)
    public var email:String?

    // @DataMember(Order=11)
    public var normalizedEmail:String?

    // @DataMember(Order=12)
    public var emailConfirmed:Int?

    // @DataMember(Order=13)
    public var passwordHash:String?

    // @DataMember(Order=14)
    public var securityStamp:String?

    // @DataMember(Order=15)
    public var concurrencyStamp:String?

    // @DataMember(Order=16)
    public var phoneNumber:String?

    // @DataMember(Order=17)
    public var phoneNumberConfirmed:Int?

    // @DataMember(Order=18)
    public var twoFactorEnabled:Int?

    // @DataMember(Order=19)
    public var lockoutEnd:String?

    // @DataMember(Order=20)
    public var lockoutEnabled:Int?

    // @DataMember(Order=21)
    public var accessFailedCount:Int?

    required public init(){}
}

// @Route("/crudevents/{Id}", "PUT")
// @DataContract
public class UpdateCrudEvent : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var eventType:String?

    // @DataMember(Order=3)
    public var model:String?

    // @DataMember(Order=4)
    public var modelId:String?

    // @DataMember(Order=5)
    public var eventDate:String?

    // @DataMember(Order=6)
    public var rowsUpdated:Int?

    // @DataMember(Order=7)
    public var requestType:String?

    // @DataMember(Order=8)
    public var requestBody:String?

    // @DataMember(Order=9)
    public var userAuthId:String?

    // @DataMember(Order=10)
    public var userAuthName:String?

    // @DataMember(Order=11)
    public var remoteIp:String?

    // @DataMember(Order=12)
    public var urn:String?

    // @DataMember(Order=13)
    public var refId:Int?

    // @DataMember(Order=14)
    public var refIdStr:String?

    // @DataMember(Order=15)
    public var meta:String?

    required public init(){}
}

// @Route("/efmigrationshistories/{MigrationId}", "PUT")
// @DataContract
public class UpdateEFMigrationsHistory : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var migrationId:String?

    // @DataMember(Order=2)
    public var productVersion:String?

    required public init(){}
}

// @Route("/filesystemfiles/{Id}", "PUT")
// @DataContract
public class UpdateFileSystemFile : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var fileName:String?

    // @DataMember(Order=3)
    public var filePath:String?

    // @DataMember(Order=4)
    public var contentType:String?

    // @DataMember(Order=5)
    public var contentLength:Int?

    // @DataMember(Order=6)
    public var fileSystemItemId:Int?

    required public init(){}
}

// @Route("/filesystemitems/{Id}", "PUT")
// @DataContract
public class UpdateFileSystemItem : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var fileAccessType:String?

    // @DataMember(Order=3)
    public var applicationUserId:String?

    required public init(){}
}

// @Route("/migrations/{Id}", "PUT")
// @DataContract
public class UpdateMigration : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var Description:String?

    // @DataMember(Order=4)
    public var createdDate:String?

    // @DataMember(Order=5)
    public var completedDate:String?

    // @DataMember(Order=6)
    public var connectionString:String?

    // @DataMember(Order=7)
    public var namedConnection:String?

    // @DataMember(Order=8)
    public var log:String?

    // @DataMember(Order=9)
    public var errorCode:String?

    // @DataMember(Order=10)
    public var errorMessage:String?

    // @DataMember(Order=11)
    public var errorStackTrace:String?

    // @DataMember(Order=12)
    public var meta:String?

    required public init(){}
}

// @Route("/validationrules/{Id}", "PUT")
// @DataContract
public class UpdateValidationRule : IReturn, IPut, Codable
{
    public typealias Return = IdResponse

    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var type:String?

    // @DataMember(Order=3)
    public var field:String?

    // @DataMember(Order=4)
    public var createdBy:String?

    // @DataMember(Order=5)
    public var createdDate:String?

    // @DataMember(Order=6)
    public var modifiedBy:String?

    // @DataMember(Order=7)
    public var modifiedDate:String?

    // @DataMember(Order=8)
    public var suspendedBy:String?

    // @DataMember(Order=9)
    public var suspendedDate:String?

    // @DataMember(Order=10)
    public var notes:String?

    // @DataMember(Order=11)
    public var validator:String?

    // @DataMember(Order=12)
    public var condition:String?

    // @DataMember(Order=13)
    public var errorCode:String?

    // @DataMember(Order=14)
    public var message:String?

    required public init(){}
}

// @Route("/requestlogs")
// @DataContract
public class RequestLogs : IReturn, IGet, Codable
{
    public typealias Return = RequestLogsResponse

    // @DataMember(Order=1)
    public var beforeSecs:Int?

    // @DataMember(Order=2)
    public var afterSecs:Int?

    // @DataMember(Order=3)
    public var operationName:String?

    // @DataMember(Order=4)
    public var ipAddress:String?

    // @DataMember(Order=5)
    public var forwardedFor:String?

    // @DataMember(Order=6)
    public var userAuthId:String?

    // @DataMember(Order=7)
    public var sessionId:String?

    // @DataMember(Order=8)
    public var referer:String?

    // @DataMember(Order=9)
    public var pathInfo:String?

    // @DataMember(Order=10)
    public var ids:[Int] = []

    // @DataMember(Order=11)
    public var beforeId:Int?

    // @DataMember(Order=12)
    public var afterId:Int?

    // @DataMember(Order=13)
    public var hasResponse:Bool?

    // @DataMember(Order=14)
    public var withErrors:Bool?

    // @DataMember(Order=15)
    public var enableSessionTracking:Bool?

    // @DataMember(Order=16)
    public var enableResponseTracking:Bool?

    // @DataMember(Order=17)
    public var enableErrorTracking:Bool?

    // @DataMember(Order=18)
    @TimeSpan public var durationLongerThan:TimeInterval?

    // @DataMember(Order=19)
    @TimeSpan public var durationLessThan:TimeInterval?

    // @DataMember(Order=20)
    public var skip:Int?

    // @DataMember(Order=21)
    public var take:Int?

    // @DataMember(Order=22)
    public var orderBy:String?

    required public init(){}
}

// @Route("/validation/rules/{Type}")
// @DataContract
public class GetValidationRules : IReturn, IGet, Codable
{
    public typealias Return = GetValidationRulesResponse

    // @DataMember(Order=1)
    public var authSecret:String?

    // @DataMember(Order=2)
    public var type:String?

    required public init(){}
}

// @Route("/validation/rules")
// @DataContract
public class ModifyValidationRules : IReturnVoid, Codable
{
    // @DataMember(Order=1)
    public var authSecret:String?

    // @DataMember(Order=2)
    public var saveRules:[ValidationRule]?

    // @DataMember(Order=3)
    public var deleteRuleIds:[Int] = []

    // @DataMember(Order=4)
    public var suspendRuleIds:[Int] = []

    // @DataMember(Order=5)
    public var unsuspendRuleIds:[Int] = []

    // @DataMember(Order=6)
    public var clearCache:Bool?

    required public init(){}
}

// @DataContract()
public class GetContactsResponse : Codable
{
    // @DataMember(Order=1)
    public var results:[Contact]?

    // @DataMember(Order=2)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class PhoneScreen : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @References(typeof(ApplicationUser))
    public var applicationUserId:String?

    // @DataMember(Order=3)
    public var applicationUser:ApplicationUser?

    // @DataMember(Order=4)
    // @References(typeof(JobApplication))
    public var jobApplicationId:Int?

    // @DataMember(Order=5)
    public var applicationStatus:JobApplicationStatus?

    // @DataMember(Order=6)
    // @StringLength(Int32.max)
    public var notes:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case applicationUserId
        case applicationUser
        case jobApplicationId
        case applicationStatus
        case notes
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        applicationUserId = try container.decodeIfPresent(String.self, forKey: .applicationUserId)
        applicationUser = try container.decodeIfPresent(ApplicationUser.self, forKey: .applicationUser)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
        applicationStatus = try container.decodeIfPresent(JobApplicationStatus.self, forKey: .applicationStatus)
        notes = try container.decodeIfPresent(String.self, forKey: .notes)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if applicationUserId != nil { try container.encode(applicationUserId, forKey: .applicationUserId) }
        if applicationUser != nil { try container.encode(applicationUser, forKey: .applicationUser) }
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
        if applicationStatus != nil { try container.encode(applicationStatus, forKey: .applicationStatus) }
        if notes != nil { try container.encode(notes, forKey: .notes) }
    }
}

// @DataContract()
public class Interview : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var bookingTime:Date?

    // @DataMember(Order=3)
    // @References(typeof(JobApplication))
    public var jobApplicationId:Int?

    // @DataMember(Order=4)
    // @References(typeof(ApplicationUser))
    public var applicationUserId:String?

    // @DataMember(Order=5)
    public var applicationUser:ApplicationUser?

    // @DataMember(Order=6)
    public var applicationStatus:JobApplicationStatus?

    // @DataMember(Order=7)
    // @StringLength(Int32.max)
    public var notes:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case bookingTime
        case jobApplicationId
        case applicationUserId
        case applicationUser
        case applicationStatus
        case notes
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        bookingTime = try container.decodeIfPresent(Date.self, forKey: .bookingTime)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
        applicationUserId = try container.decodeIfPresent(String.self, forKey: .applicationUserId)
        applicationUser = try container.decodeIfPresent(ApplicationUser.self, forKey: .applicationUser)
        applicationStatus = try container.decodeIfPresent(JobApplicationStatus.self, forKey: .applicationStatus)
        notes = try container.decodeIfPresent(String.self, forKey: .notes)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if bookingTime != nil { try container.encode(bookingTime, forKey: .bookingTime) }
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
        if applicationUserId != nil { try container.encode(applicationUserId, forKey: .applicationUserId) }
        if applicationUser != nil { try container.encode(applicationUser, forKey: .applicationUser) }
        if applicationStatus != nil { try container.encode(applicationStatus, forKey: .applicationStatus) }
        if notes != nil { try container.encode(notes, forKey: .notes) }
    }
}

// @DataContract()
public class JobOffer : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var salaryOffer:Int?

    // @DataMember(Order=3)
    // @References(typeof(JobApplication))
    public var jobApplicationId:Int?

    // @DataMember(Order=4)
    // @References(typeof(ApplicationUser))
    public var applicationUserId:String?

    // @DataMember(Order=5)
    public var applicationUser:ApplicationUser?

    // @DataMember(Order=6)
    // @StringLength(Int32.max)
    public var notes:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case salaryOffer
        case jobApplicationId
        case applicationUserId
        case applicationUser
        case notes
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        salaryOffer = try container.decodeIfPresent(Int.self, forKey: .salaryOffer)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
        applicationUserId = try container.decodeIfPresent(String.self, forKey: .applicationUserId)
        applicationUser = try container.decodeIfPresent(ApplicationUser.self, forKey: .applicationUser)
        notes = try container.decodeIfPresent(String.self, forKey: .notes)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if salaryOffer != nil { try container.encode(salaryOffer, forKey: .salaryOffer) }
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
        if applicationUserId != nil { try container.encode(applicationUserId, forKey: .applicationUserId) }
        if applicationUser != nil { try container.encode(applicationUser, forKey: .applicationUser) }
        if notes != nil { try container.encode(notes, forKey: .notes) }
    }
}

// @DataContract()
public class TalentStatsResponse : Codable
{
    // @DataMember(Order=1)
    public var totalJobs:Int?

    // @DataMember(Order=2)
    public var totalContacts:Int?

    // @DataMember(Order=3)
    public var avgSalaryExpectation:Int?

    // @DataMember(Order=4)
    public var avgSalaryLower:Int?

    // @DataMember(Order=5)
    public var avgSalaryUpper:Int?

    // @DataMember(Order=6)
    public var preferredRemotePercentage:Double?

    required public init(){}
}

// @DataContract()
public class QueueCheckUrlsResponse : Codable
{
    // @DataMember(Order=1)
    public var jobRef:BackgroundJobRef?

    required public init(){}
}

// @DataContract()
public class QueryResponseAlt<Item : Codable> : Codable
{
    // @DataMember(Order=1)
    public var offset:Int?

    // @DataMember(Order=2)
    public var total:Int?

    // @DataMember(Order=3)
    public var results:[Item]?

    // @DataMember(Order=4)
    public var meta:[String:String]?

    // @DataMember(Order=5)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class Items : Codable
{
    // @DataMember(Order=1)
    public var results:[Item]?

    required public init(){}
}

// @DataContract()
public class SecuredResponse : Codable
{
    // @DataMember(Order=1)
    public var result:String?

    // @DataMember(Order=2)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class CreateJwtResponse : Codable
{
    // @DataMember(Order=1)
    public var token:String?

    // @DataMember(Order=2)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class CreateRefreshJwtResponse : Codable
{
    // @DataMember(Order=1)
    public var token:String?

    // @DataMember(Order=2)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class Movie : Codable
{
    // @DataMember(Order=1)
    // @PrimaryKey()
    public var movieID:String?

    // @DataMember(Order=2)
    public var movieNo:Int?

    // @DataMember(Order=3)
    public var name:String?

    // @DataMember(Order=4)
    public var Description:String?

    // @DataMember(Order=5)
    public var movieRef:String?

    required public init(){}
}

// @DataContract()
public class HelloResponse : Codable
{
    // @DataMember(Order=1)
    public var result:String?

    // @DataMember(Order=2)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class GetWorkerStatsResponse : Codable
{
    // @DataMember(Order=1)
    public var results:[WorkerStats]?

    // @DataMember(Order=2)
    public var queueCounts:[String:Int]?

    // @DataMember(Order=3)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract
public class OpenAiChatResponse : Codable
{
    /**
    * A unique identifier for the chat completion.
    */
    // @DataMember(Name="id", Order=1)
    public var id:String?

    /**
    * A list of chat completion choices. Can be more than one if n is greater than 1.
    */
    // @DataMember(Name="choices", Order=2)
    public var choices:[Choice]?

    /**
    * The Unix timestamp (in seconds) of when the chat completion was created.
    */
    // @DataMember(Name="created", Order=3)
    public var created:Int?

    /**
    * The model used for the chat completion.
    */
    // @DataMember(Name="model", Order=4)
    public var model:String?

    /**
    * This fingerprint represents the backend configuration that the model runs with.
    */
    // @DataMember(Name="system_fingerprint", Order=5)
    public var system_fingerprint:String?

    /**
    * The object type, which is always chat.completion.
    */
    // @DataMember(Name="object", Order=6)
    public var object:String?

    /**
    * Usage statistics for the completion request.
    */
    // @DataMember(Name="usage", Order=7)
    public var usage:OpenAiUsage?

    // @DataMember(Name="responseStatus", Order=8)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract
public class StringsResponse : Codable
{
    // @DataMember(Order=1)
    public var results:[String]?

    // @DataMember(Order=2)
    public var meta:[String:String]?

    // @DataMember(Order=3)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

/**
* Response object for generation requests
*/
// @DataContract()
public class GenerationResponse : Codable
{
    /**
    * List of generated outputs
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="List of generated outputs")
    public var outputs:[ArtifactOutput]?

    /**
    * List of generated text outputs
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="List of generated text outputs")
    public var textOutputs:[TextOutput]?

    /**
    * Detailed response status information
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="Detailed response status information")
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class SendVerbResponse : Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var pathInfo:String?

    // @DataMember(Order=3)
    public var requestMethod:String?

    required public init(){}
}

// @DataContract()
public class TestAuthResponse : Codable
{
    // @DataMember(Order=1)
    public var userId:String?

    // @DataMember(Order=2)
    public var sessionId:String?

    // @DataMember(Order=3)
    public var userName:String?

    // @DataMember(Order=4)
    public var displayName:String?

    // @DataMember(Order=5)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class HelloAllTypesResponse : Codable
{
    // @DataMember(Order=1)
    public var result:String?

    // @DataMember(Order=2)
    public var allTypes:AllTypes?

    // @DataMember(Order=3)
    public var allCollectionTypes:AllCollectionTypes?

    required public init(){}
}

// @DataContract()
public class ThrowTypeResponse : Codable
{
    // @DataMember(Order=1)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class ThrowValidationResponse : Codable
{
    // @DataMember(Order=1)
    public var age:Int?

    // @DataMember(Order=2)
    public var required:String?

    // @DataMember(Order=3)
    public var email:String?

    // @DataMember(Order=4)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class ProfileGenResponse : Codable
{
    required public init(){}
}

// @DataContract()
public class SubAllTypes : AllTypesBase
{
    // @DataMember(Order=1)
    public var hierarchy:Int?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case hierarchy
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        hierarchy = try container.decodeIfPresent(Int.self, forKey: .hierarchy)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if hierarchy != nil { try container.encode(hierarchy, forKey: .hierarchy) }
    }
}

// @DataContract()
public class AdminDashboardResponse : Codable
{
    // @DataMember(Order=1)
    public var serverStats:ServerStats?

    // @DataMember(Order=2)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract
public class AuthenticateResponse : IHasSessionId, IHasBearerToken, Codable
{
    // @DataMember(Order=1)
    public var userId:String?

    // @DataMember(Order=2)
    public var sessionId:String?

    // @DataMember(Order=3)
    public var userName:String?

    // @DataMember(Order=4)
    public var displayName:String?

    // @DataMember(Order=5)
    public var referrerUrl:String?

    // @DataMember(Order=6)
    public var bearerToken:String?

    // @DataMember(Order=7)
    public var refreshToken:String?

    // @DataMember(Order=8)
    public var refreshTokenExpiry:Date?

    // @DataMember(Order=9)
    public var profileUrl:String?

    // @DataMember(Order=10)
    public var roles:[String]?

    // @DataMember(Order=11)
    public var permissions:[String]?

    // @DataMember(Order=12)
    public var authProvider:String?

    // @DataMember(Order=13)
    public var responseStatus:ResponseStatus?

    // @DataMember(Order=14)
    public var meta:[String:String]?

    required public init(){}
}

// @DataContract()
public class AdminDatabaseResponse : Codable
{
    // @DataMember(Order=1)
    public var results:[[String:String]]?

    // @DataMember(Order=2)
    public var total:Int?

    // @DataMember(Order=3)
    public var columns:[MetadataPropertyType]?

    // @DataMember(Order=4)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class AdminProfilingResponse : Codable
{
    // @DataMember(Order=1)
    public var results:[DiagnosticEntry]?

    // @DataMember(Order=2)
    public var total:Int?

    // @DataMember(Order=3)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract
public class IdResponse : Codable
{
    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public class Contact : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @Computed()
    public var displayName:String?

    // @DataMember(Order=3)
    public var profileUrl:String?

    // @DataMember(Order=4)
    public var firstName:String?

    // @DataMember(Order=5)
    public var lastName:String?

    // @DataMember(Order=6)
    public var salaryExpectation:Int?

    // @DataMember(Order=7)
    public var jobType:String?

    // @DataMember(Order=8)
    public var availabilityWeeks:Int?

    // @DataMember(Order=9)
    public var preferredWorkType:EmploymentType?

    // @DataMember(Order=10)
    public var preferredLocation:String?

    // @DataMember(Order=11)
    public var email:String?

    // @DataMember(Order=12)
    public var phone:String?

    // @DataMember(Order=13)
    // @StringLength(Int32.max)
    public var about:String?

    // @DataMember(Order=14)
    public var applications:[JobApplication]?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case displayName
        case profileUrl
        case firstName
        case lastName
        case salaryExpectation
        case jobType
        case availabilityWeeks
        case preferredWorkType
        case preferredLocation
        case email
        case phone
        case about
        case applications
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        displayName = try container.decodeIfPresent(String.self, forKey: .displayName)
        profileUrl = try container.decodeIfPresent(String.self, forKey: .profileUrl)
        firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        salaryExpectation = try container.decodeIfPresent(Int.self, forKey: .salaryExpectation)
        jobType = try container.decodeIfPresent(String.self, forKey: .jobType)
        availabilityWeeks = try container.decodeIfPresent(Int.self, forKey: .availabilityWeeks)
        preferredWorkType = try container.decodeIfPresent(EmploymentType.self, forKey: .preferredWorkType)
        preferredLocation = try container.decodeIfPresent(String.self, forKey: .preferredLocation)
        email = try container.decodeIfPresent(String.self, forKey: .email)
        phone = try container.decodeIfPresent(String.self, forKey: .phone)
        about = try container.decodeIfPresent(String.self, forKey: .about)
        applications = try container.decodeIfPresent([JobApplication].self, forKey: .applications) ?? []
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if displayName != nil { try container.encode(displayName, forKey: .displayName) }
        if profileUrl != nil { try container.encode(profileUrl, forKey: .profileUrl) }
        if firstName != nil { try container.encode(firstName, forKey: .firstName) }
        if lastName != nil { try container.encode(lastName, forKey: .lastName) }
        if salaryExpectation != nil { try container.encode(salaryExpectation, forKey: .salaryExpectation) }
        if jobType != nil { try container.encode(jobType, forKey: .jobType) }
        if availabilityWeeks != nil { try container.encode(availabilityWeeks, forKey: .availabilityWeeks) }
        if preferredWorkType != nil { try container.encode(preferredWorkType, forKey: .preferredWorkType) }
        if preferredLocation != nil { try container.encode(preferredLocation, forKey: .preferredLocation) }
        if email != nil { try container.encode(email, forKey: .email) }
        if phone != nil { try container.encode(phone, forKey: .phone) }
        if about != nil { try container.encode(about, forKey: .about) }
        if applications != nil && applications!.count > 0 { try container.encode(applications, forKey: .applications) }
    }
}

// @DataContract()
public class Job : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var title:String?

    // @DataMember(Order=3)
    public var employmentType:EmploymentType?

    // @DataMember(Order=4)
    public var company:String?

    // @DataMember(Order=5)
    public var location:String?

    // @DataMember(Order=6)
    public var salaryRangeLower:Int?

    // @DataMember(Order=7)
    public var salaryRangeUpper:Int?

    // @DataMember(Order=8)
    // @StringLength(Int32.max)
    public var Description:String?

    // @DataMember(Order=9)
    public var applications:[JobApplication]?

    // @DataMember(Order=10)
    public var closing:Date?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case title
        case employmentType
        case company
        case location
        case salaryRangeLower
        case salaryRangeUpper
        case Description
        case applications
        case closing
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        title = try container.decodeIfPresent(String.self, forKey: .title)
        employmentType = try container.decodeIfPresent(EmploymentType.self, forKey: .employmentType)
        company = try container.decodeIfPresent(String.self, forKey: .company)
        location = try container.decodeIfPresent(String.self, forKey: .location)
        salaryRangeLower = try container.decodeIfPresent(Int.self, forKey: .salaryRangeLower)
        salaryRangeUpper = try container.decodeIfPresent(Int.self, forKey: .salaryRangeUpper)
        Description = try container.decodeIfPresent(String.self, forKey: .Description)
        applications = try container.decodeIfPresent([JobApplication].self, forKey: .applications) ?? []
        closing = try container.decodeIfPresent(Date.self, forKey: .closing)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if title != nil { try container.encode(title, forKey: .title) }
        if employmentType != nil { try container.encode(employmentType, forKey: .employmentType) }
        if company != nil { try container.encode(company, forKey: .company) }
        if location != nil { try container.encode(location, forKey: .location) }
        if salaryRangeLower != nil { try container.encode(salaryRangeLower, forKey: .salaryRangeLower) }
        if salaryRangeUpper != nil { try container.encode(salaryRangeUpper, forKey: .salaryRangeUpper) }
        if Description != nil { try container.encode(Description, forKey: .Description) }
        if applications != nil && applications!.count > 0 { try container.encode(applications, forKey: .applications) }
        if closing != nil { try container.encode(closing, forKey: .closing) }
    }
}

// @DataContract()
public class JobApplication : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @References(typeof(Job))
    public var jobId:Int?

    // @DataMember(Order=3)
    // @References(typeof(Contact))
    public var contactId:Int?

    // @DataMember(Order=4)
    public var position:Job?

    // @DataMember(Order=5)
    public var applicant:Contact?

    // @DataMember(Order=6)
    public var comments:[JobApplicationComment]?

    // @DataMember(Order=7)
    public var appliedDate:Date?

    // @DataMember(Order=8)
    public var applicationStatus:JobApplicationStatus?

    // @DataMember(Order=9)
    public var attachments:[JobApplicationAttachment]?

    // @DataMember(Order=10)
    public var events:[JobApplicationEvent]?

    // @DataMember(Order=11)
    public var phoneScreen:PhoneScreen?

    // @DataMember(Order=12)
    public var interview:Interview?

    // @DataMember(Order=13)
    public var jobOffer:JobOffer?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case jobId
        case contactId
        case position
        case applicant
        case comments
        case appliedDate
        case applicationStatus
        case attachments
        case events
        case phoneScreen
        case interview
        case jobOffer
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        jobId = try container.decodeIfPresent(Int.self, forKey: .jobId)
        contactId = try container.decodeIfPresent(Int.self, forKey: .contactId)
        position = try container.decodeIfPresent(Job.self, forKey: .position)
        applicant = try container.decodeIfPresent(Contact.self, forKey: .applicant)
        comments = try container.decodeIfPresent([JobApplicationComment].self, forKey: .comments) ?? []
        appliedDate = try container.decodeIfPresent(Date.self, forKey: .appliedDate)
        applicationStatus = try container.decodeIfPresent(JobApplicationStatus.self, forKey: .applicationStatus)
        attachments = try container.decodeIfPresent([JobApplicationAttachment].self, forKey: .attachments) ?? []
        events = try container.decodeIfPresent([JobApplicationEvent].self, forKey: .events) ?? []
        phoneScreen = try container.decodeIfPresent(PhoneScreen.self, forKey: .phoneScreen)
        interview = try container.decodeIfPresent(Interview.self, forKey: .interview)
        jobOffer = try container.decodeIfPresent(JobOffer.self, forKey: .jobOffer)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if jobId != nil { try container.encode(jobId, forKey: .jobId) }
        if contactId != nil { try container.encode(contactId, forKey: .contactId) }
        if position != nil { try container.encode(position, forKey: .position) }
        if applicant != nil { try container.encode(applicant, forKey: .applicant) }
        if comments != nil && comments!.count > 0 { try container.encode(comments, forKey: .comments) }
        if appliedDate != nil { try container.encode(appliedDate, forKey: .appliedDate) }
        if applicationStatus != nil { try container.encode(applicationStatus, forKey: .applicationStatus) }
        if attachments != nil && attachments!.count > 0 { try container.encode(attachments, forKey: .attachments) }
        if events != nil && events!.count > 0 { try container.encode(events, forKey: .events) }
        if phoneScreen != nil { try container.encode(phoneScreen, forKey: .phoneScreen) }
        if interview != nil { try container.encode(interview, forKey: .interview) }
        if jobOffer != nil { try container.encode(jobOffer, forKey: .jobOffer) }
    }
}

// @DataContract()
public class JobApplicationEvent : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @References(typeof(JobApplication))
    public var jobApplicationId:Int?

    // @DataMember(Order=3)
    // @References(typeof(ApplicationUser))
    public var applicationUserId:String?

    // @DataMember(Order=4)
    public var applicationUser:ApplicationUser?

    // @DataMember(Order=5)
    // @StringLength(Int32.max)
    public var Description:String?

    // @DataMember(Order=6)
    public var status:JobApplicationStatus?

    // @DataMember(Order=7)
    public var eventDate:Date?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case jobApplicationId
        case applicationUserId
        case applicationUser
        case Description
        case status
        case eventDate
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
        applicationUserId = try container.decodeIfPresent(String.self, forKey: .applicationUserId)
        applicationUser = try container.decodeIfPresent(ApplicationUser.self, forKey: .applicationUser)
        Description = try container.decodeIfPresent(String.self, forKey: .Description)
        status = try container.decodeIfPresent(JobApplicationStatus.self, forKey: .status)
        eventDate = try container.decodeIfPresent(Date.self, forKey: .eventDate)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
        if applicationUserId != nil { try container.encode(applicationUserId, forKey: .applicationUserId) }
        if applicationUser != nil { try container.encode(applicationUser, forKey: .applicationUser) }
        if Description != nil { try container.encode(Description, forKey: .Description) }
        if status != nil { try container.encode(status, forKey: .status) }
        if eventDate != nil { try container.encode(eventDate, forKey: .eventDate) }
    }
}

// @DataContract()
public class JobApplicationComment : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @References(typeof(ApplicationUser))
    public var applicationUserId:String?

    // @DataMember(Order=3)
    public var applicationUser:ApplicationUser?

    // @DataMember(Order=4)
    // @References(typeof(JobApplication))
    public var jobApplicationId:Int?

    // @DataMember(Order=5)
    // @StringLength(Int32.max)
    public var comment:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case applicationUserId
        case applicationUser
        case jobApplicationId
        case comment
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        applicationUserId = try container.decodeIfPresent(String.self, forKey: .applicationUserId)
        applicationUser = try container.decodeIfPresent(ApplicationUser.self, forKey: .applicationUser)
        jobApplicationId = try container.decodeIfPresent(Int.self, forKey: .jobApplicationId)
        comment = try container.decodeIfPresent(String.self, forKey: .comment)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if applicationUserId != nil { try container.encode(applicationUserId, forKey: .applicationUserId) }
        if applicationUser != nil { try container.encode(applicationUser, forKey: .applicationUser) }
        if jobApplicationId != nil { try container.encode(jobApplicationId, forKey: .jobApplicationId) }
        if comment != nil { try container.encode(comment, forKey: .comment) }
    }
}

// @DataContract()
public class FileSystemItem : IFileItem, Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var fileAccessType:FileAccessType?

    // @DataMember(Order=3)
    public var file:FileSystemFile?

    // @DataMember(Order=4)
    public var applicationUserId:String?

    required public init(){}
}

// @DataContract()
public class Todo : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var text:String?

    // @DataMember(Order=3)
    public var isFinished:Bool?

    required public init(){}
}

// @DataContract
public class RequestLogsResponse : Codable
{
    // @DataMember(Order=1)
    public var results:[RequestLogEntry]?

    // @DataMember(Order=2)
    public var usage:[String:String]?

    // @DataMember(Order=3)
    public var total:Int?

    // @DataMember(Order=4)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract
public class GetValidationRulesResponse : Codable
{
    // @DataMember(Order=1)
    public var results:[ValidationRule]?

    // @DataMember(Order=2)
    public var responseStatus:ResponseStatus?

    required public init(){}
}

// @DataContract()
public enum JobApplicationStatus : String, Codable
{
    case Applied
    case PhoneScreening
    case PhoneScreeningCompleted
    case Interview
    case InterviewCompleted
    case Offer
    case Disqualified
}

// @DataContract()
public class SubType : Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @DataContract()
public enum Colors : String, Codable
{
    case Transparent
    case Red
    case Green
    case Blue
}

// @DataContract()
public class Attachment : Codable
{
    // @DataMember(Order=1)
    public var fileName:String?

    // @DataMember(Order=2)
    public var filePath:String?

    // @DataMember(Order=3)
    public var contentType:String?

    // @DataMember(Order=4)
    public var contentLength:Int?

    required public init(){}
}

// @DataContract()
public protocol IAuthTokens
{
    // @DataMember(Order=1)
    var provider:String? { get set }

    // @DataMember(Order=2)
    var userId:String? { get set }

    // @DataMember(Order=3)
    var accessToken:String? { get set }

    // @DataMember(Order=4)
    var accessTokenSecret:String? { get set }

    // @DataMember(Order=5)
    var refreshToken:String? { get set }

    // @DataMember(Order=6)
    var refreshTokenExpiry:Date? { get set }

    // @DataMember(Order=7)
    var requestToken:String? { get set }

    // @DataMember(Order=8)
    var requestTokenSecret:String? { get set }

    // @DataMember(Order=9)
    var items:[String:String]? { get set }

}

// @DataContract
public class AuthUserSession : Codable
{
    // @DataMember(Order=1)
    public var referrerUrl:String?

    // @DataMember(Order=2)
    public var id:String?

    // @DataMember(Order=3)
    public var userAuthId:String?

    // @DataMember(Order=4)
    public var userAuthName:String?

    // @DataMember(Order=5)
    public var userName:String?

    // @DataMember(Order=6)
    public var twitterUserId:String?

    // @DataMember(Order=7)
    public var twitterScreenName:String?

    // @DataMember(Order=8)
    public var facebookUserId:String?

    // @DataMember(Order=9)
    public var facebookUserName:String?

    // @DataMember(Order=10)
    public var firstName:String?

    // @DataMember(Order=11)
    public var lastName:String?

    // @DataMember(Order=12)
    public var displayName:String?

    // @DataMember(Order=13)
    public var company:String?

    // @DataMember(Order=14)
    public var email:String?

    // @DataMember(Order=15)
    public var primaryEmail:String?

    // @DataMember(Order=16)
    public var phoneNumber:String?

    // @DataMember(Order=17)
    public var birthDate:Date?

    // @DataMember(Order=18)
    public var birthDateRaw:String?

    // @DataMember(Order=19)
    public var address:String?

    // @DataMember(Order=20)
    public var address2:String?

    // @DataMember(Order=21)
    public var city:String?

    // @DataMember(Order=22)
    public var state:String?

    // @DataMember(Order=23)
    public var country:String?

    // @DataMember(Order=24)
    public var culture:String?

    // @DataMember(Order=25)
    public var fullName:String?

    // @DataMember(Order=26)
    public var gender:String?

    // @DataMember(Order=27)
    public var language:String?

    // @DataMember(Order=28)
    public var mailAddress:String?

    // @DataMember(Order=29)
    public var nickname:String?

    // @DataMember(Order=30)
    public var postalCode:String?

    // @DataMember(Order=31)
    public var timeZone:String?

    // @DataMember(Order=32)
    public var requestTokenSecret:String?

    // @DataMember(Order=33)
    public var createdAt:Date?

    // @DataMember(Order=34)
    public var lastModified:Date?

    // @DataMember(Order=35)
    public var roles:[String]?

    // @DataMember(Order=36)
    public var permissions:[String]?

    // @DataMember(Order=37)
    public var isAuthenticated:Bool?

    // @DataMember(Order=38)
    public var fromToken:Bool?

    // @DataMember(Order=39)
    public var profileUrl:String?

    // @DataMember(Order=40)
    public var sequence:String?

    // @DataMember(Order=41)
    public var tag:Int?

    // @DataMember(Order=42)
    public var authProvider:String?

    //providerOAuthAccess:[IAuthTokens] ignored. Swift doesn't support interface properties

    // @DataMember(Order=44)
    public var meta:[String:String]?

    // @DataMember(Order=45)
    public var audiences:[String]?

    // @DataMember(Order=46)
    public var scopes:[String]?

    // @DataMember(Order=47)
    public var dns:String?

    // @DataMember(Order=48)
    public var rsa:String?

    // @DataMember(Order=49)
    public var sid:String?

    // @DataMember(Order=50)
    public var hash:String?

    // @DataMember(Order=51)
    public var homePhone:String?

    // @DataMember(Order=52)
    public var mobilePhone:String?

    // @DataMember(Order=53)
    public var webpage:String?

    // @DataMember(Order=54)
    public var emailConfirmed:Bool?

    // @DataMember(Order=55)
    public var phoneNumberConfirmed:Bool?

    // @DataMember(Order=56)
    public var twoFactorEnabled:Bool?

    // @DataMember(Order=57)
    public var securityStamp:String?

    // @DataMember(Order=58)
    public var type:String?

    // @DataMember(Order=59)
    public var recoveryToken:String?

    // @DataMember(Order=60)
    public var refId:Int?

    // @DataMember(Order=61)
    public var refIdStr:String?

    required public init(){}
}

/**
* A list of messages comprising the conversation so far.
*/
// @DataContract
public class OpenAiMessage : Codable
{
    /**
    * The contents of the message.
    */
    // @DataMember(Name="content", Order=1)
    public var content:String?

    /**
    * The role of the author of this message. Valid values are `system`, `user`, `assistant` and `tool`.
    */
    // @DataMember(Name="role", Order=2)
    public var role:String?

    /**
    * An optional name for the participant. Provides the model information to differentiate between participants of the same role.
    */
    // @DataMember(Name="name", Order=3)
    public var name:String?

    /**
    * The tool calls generated by the model, such as function calls.
    */
    // @DataMember(Name="tool_calls", Order=4)
    public var tool_calls:[ToolCall] = []

    /**
    * Tool call that this message is responding to.
    */
    // @DataMember(Name="tool_call_id", Order=5)
    public var tool_call_id:String?

    required public init(){}
}

// @DataContract
public class OpenAiResponseFormat : Codable
{
    /**
    * An object specifying the format that the model must output. Compatible with GPT-4 Turbo and all GPT-3.5 Turbo models newer than gpt-3.5-turbo-1106.
    */
    // @DataMember(Name="response_format", Order=1)
    public var response_format:ResponseFormat?

    required public init(){}
}

// @DataContract
public class OpenAiTools : Codable
{
    /**
    * The type of the tool. Currently, only function is supported.
    */
    // @DataMember(Name="type", Order=1)
    public var type:OpenAiToolType?

    required public init(){}
}

/**
* Given a list of messages comprising a conversation, the model will return a response.
*/
// @DataContract
public class OpenAiChat : Codable
{
    /**
    * A list of messages comprising the conversation so far.
    */
    // @DataMember(Name="messages", Order=1)
    public var messages:[OpenAiMessage]?

    /**
    * ID of the model to use. See the model endpoint compatibility table for details on which models work with the Chat API
    */
    // @DataMember(Name="model", Order=2)
    public var model:String?

    /**
    * Number between `-2.0` and `2.0`. Positive values penalize new tokens based on their existing frequency in the text so far, decreasing the model's likelihood to repeat the same line verbatim.
    */
    // @DataMember(Name="frequency_penalty", Order=3)
    public var frequency_penalty:Double?

    /**
    * Modify the likelihood of specified tokens appearing in the completion.
    */
    // @DataMember(Name="logit_bias", Order=4)
    public var logit_bias:[Int:Int]?

    /**
    * Whether to return log probabilities of the output tokens or not. If true, returns the log probabilities of each output token returned in the content of message.
    */
    // @DataMember(Name="logprobs", Order=5)
    public var logprobs:Bool?

    /**
    * An integer between 0 and 20 specifying the number of most likely tokens to return at each token position, each with an associated log probability. logprobs must be set to true if this parameter is used.
    */
    // @DataMember(Name="top_logprobs", Order=6)
    public var top_logprobs:Int?

    /**
    * The maximum number of tokens that can be generated in the chat completion.
    */
    // @DataMember(Name="max_tokens", Order=7)
    public var max_tokens:Int?

    /**
    * How many chat completion choices to generate for each input message. Note that you will be charged based on the number of generated tokens across all of the choices. Keep `n` as `1` to minimize costs.
    */
    // @DataMember(Name="n", Order=8)
    public var n:Int?

    /**
    * Number between -2.0 and 2.0. Positive values penalize new tokens based on whether they appear in the text so far, increasing the model's likelihood to talk about new topics.
    */
    // @DataMember(Name="presence_penalty", Order=9)
    public var presence_penalty:Double?

    /**
    * An object specifying the format that the model must output. Compatible with GPT-4 Turbo and all GPT-3.5 Turbo models newer than `gpt-3.5-turbo-1106`. Setting Type to ResponseFormat.JsonObject enables JSON mode, which guarantees the message the model generates is valid JSON.
    */
    // @DataMember(Name="response_format", Order=10)
    public var response_format:OpenAiResponseFormat?

    /**
    * This feature is in Beta. If specified, our system will make a best effort to sample deterministically, such that repeated requests with the same seed and parameters should return the same result. Determinism is not guaranteed, and you should refer to the system_fingerprint response parameter to monitor changes in the backend.
    */
    // @DataMember(Name="seed", Order=11)
    public var seed:Int?

    /**
    * Up to 4 sequences where the API will stop generating further tokens.
    */
    // @DataMember(Name="stop", Order=12)
    public var stop:[String]?

    /**
    * If set, partial message deltas will be sent, like in ChatGPT. Tokens will be sent as data-only server-sent events as they become available, with the stream terminated by a `data: [DONE]` message.
    */
    // @DataMember(Name="stream", Order=13)
    public var stream:Bool?

    /**
    * What sampling temperature to use, between 0 and 2. Higher values like 0.8 will make the output more random, while lower values like 0.2 will make it more focused and deterministic.
    */
    // @DataMember(Name="temperature", Order=14)
    public var temperature:Double?

    /**
    * An alternative to sampling with temperature, called nucleus sampling, where the model considers the results of the tokens with top_p probability mass. So 0.1 means only the tokens comprising the top 10% probability mass are considered.
    */
    // @DataMember(Name="top_p", Order=15)
    public var top_p:Double?

    /**
    * A list of tools the model may call. Currently, only functions are supported as a tool. Use this to provide a list of functions the model may generate JSON inputs for. A max of 128 functions are supported.
    */
    // @DataMember(Name="tools", Order=16)
    public var tools:[OpenAiTools]?

    /**
    * A unique identifier representing your end-user, which can help OpenAI to monitor and detect abuse.
    */
    // @DataMember(Name="user", Order=17)
    public var user:String?

    required public init(){}
}

// @DataContract()
public protocol IGeneration
{
    // @DataMember(Order=1)
    var refId:String? { get set }

    // @DataMember(Order=2)
    var tag:String? { get set }

}

// @DataContract()
public class KeyValuePair<TKey : Codable, TValue : Codable> : Codable
{
    // @DataMember(Order=1)
    public var key:TKey?

    // @DataMember(Order=2)
    public var value:TValue?

    required public init(){}
}

// @DataContract()
public class Poco : Codable
{
    // @DataMember(Order=1)
    public var name:String?

    required public init(){}
}

// @DataContract()
public enum EnumType : String, Codable
{
    case Value1
    case Value2
    case Value3
}

// @Flags()
// @DataContract()
public enum EnumTypeFlags : Int, Codable
{
    case Value1 = 0
    case Value2 = 1
    case Value3 = 2
}

// @DataContract()
public enum EnumWithValues : String, Codable
{
    case None
    case Value1
    case Value2
}

// @Flags()
// @DataContract()
public enum EnumFlags : Int, Codable
{
    case Value0 = 0
    case Value1 = 1
    case Value2 = 2
    case Value3 = 4
    case Value123 = 7
}

// @DataContract()
public enum EnumAsInt : Int, Codable
{
    case Value1 = 1000
    case Value2 = 2000
    case Value3 = 3000
}

// @DataContract()
public enum EnumStyle : String, Codable
{
    case lower
    case UPPER
    case PascalCase
    case camelCase
    case camelUPPER
    case PascalUPPER
}

// @DataContract()
public enum EnumStyleMembers : String, Codable
{
    case Lower
    case Upper
    case PascalCase
    case CamelCase
    case CamelUpper
    case PascalUpper
}

// @DataContract()
public class AllTypesBase : Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var nullableId:Int?

    // @DataMember(Order=3)
    public var byte:UInt8?

    // @DataMember(Order=4)
    public var short:Int16?

    // @DataMember(Order=5)
    public var int:Int?

    // @DataMember(Order=6)
    public var long:Int?

    // @DataMember(Order=7)
    public var uShort:UInt16?

    // @DataMember(Order=8)
    public var uInt:UInt32?

    // @DataMember(Order=9)
    public var uLong:UInt64?

    // @DataMember(Order=10)
    public var float:Float?

    // @DataMember(Order=11)
    public var double:Double?

    // @DataMember(Order=12)
    public var decimal:Double?

    // @DataMember(Order=13)
    public var string:String?

    // @DataMember(Order=14)
    public var dateTime:Date?

    // @DataMember(Order=15)
    @TimeSpan public var timeSpan:TimeInterval?

    // @DataMember(Order=16)
    public var dateTimeOffset:Date?

    // @DataMember(Order=17)
    public var guid:String?

    // @DataMember(Order=18)
    public var char:String?

    // @DataMember(Order=19)
    public var keyValuePair:KeyValuePair<String, String>?

    // @DataMember(Order=20)
    public var nullableDateTime:Date?

    // @DataMember(Order=21)
    @TimeSpan public var nullableTimeSpan:TimeInterval?

    // @DataMember(Order=22)
    public var stringList:[String]?

    // @DataMember(Order=23)
    public var stringArray:[String] = []

    // @DataMember(Order=24)
    public var stringMap:[String:String]?

    // @DataMember(Order=25)
    public var intStringMap:[Int:String]?

    // @DataMember(Order=26)
    public var subType:SubType?

    required public init(){}

    private enum CodingKeys : String, CodingKey {
        case id
        case nullableId
        case byte
        case short
        case int
        case long
        case uShort
        case uInt
        case uLong
        case float
        case double
        case decimal
        case string
        case dateTime
        case timeSpan
        case dateTimeOffset
        case guid
        case char
        case keyValuePair
        case nullableDateTime
        case nullableTimeSpan
        case stringList
        case stringArray
        case stringMap
        case intStringMap
        case subType
    }

    required public init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        nullableId = try container.decodeIfPresent(Int.self, forKey: .nullableId)
        byte = try container.decodeIfPresent(UInt8.self, forKey: .byte)
        short = try container.decodeIfPresent(Int16.self, forKey: .short)
        int = try container.decodeIfPresent(Int.self, forKey: .int)
        long = try container.decodeIfPresent(Int.self, forKey: .long)
        uShort = try container.decodeIfPresent(UInt16.self, forKey: .uShort)
        uInt = try container.decodeIfPresent(UInt32.self, forKey: .uInt)
        uLong = try container.decodeIfPresent(UInt64.self, forKey: .uLong)
        float = try container.decodeIfPresent(Float.self, forKey: .float)
        double = try container.decodeIfPresent(Double.self, forKey: .double)
        decimal = try container.decodeIfPresent(Double.self, forKey: .decimal)
        string = try container.decodeIfPresent(String.self, forKey: .string)
        dateTime = try container.decodeIfPresent(Date.self, forKey: .dateTime)
        timeSpan = try container.convertIfPresent(TimeInterval.self, forKey: .timeSpan)
        dateTimeOffset = try container.decodeIfPresent(Date.self, forKey: .dateTimeOffset)
        guid = try container.decodeIfPresent(String.self, forKey: .guid)
        char = try container.decodeIfPresent(String.self, forKey: .char)
        keyValuePair = try container.decodeIfPresent(KeyValuePair<String, String>.self, forKey: .keyValuePair)
        nullableDateTime = try container.decodeIfPresent(Date.self, forKey: .nullableDateTime)
        nullableTimeSpan = try container.convertIfPresent(TimeInterval.self, forKey: .nullableTimeSpan)
        stringList = try container.decodeIfPresent([String].self, forKey: .stringList) ?? []
        stringArray = try container.decodeIfPresent([String].self, forKey: .stringArray) ?? []
        stringMap = try container.decodeIfPresent([String:String].self, forKey: .stringMap) ?? [:]
        intStringMap = try container.decodeIfPresent([Int:String].self, forKey: .intStringMap) ?? [:]
        subType = try container.decodeIfPresent(SubType.self, forKey: .subType)
    }

    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if nullableId != nil { try container.encode(nullableId, forKey: .nullableId) }
        if byte != nil { try container.encode(byte, forKey: .byte) }
        if short != nil { try container.encode(short, forKey: .short) }
        if int != nil { try container.encode(int, forKey: .int) }
        if long != nil { try container.encode(long, forKey: .long) }
        if uShort != nil { try container.encode(uShort, forKey: .uShort) }
        if uInt != nil { try container.encode(uInt, forKey: .uInt) }
        if uLong != nil { try container.encode(uLong, forKey: .uLong) }
        if float != nil { try container.encode(float, forKey: .float) }
        if double != nil { try container.encode(double, forKey: .double) }
        if decimal != nil { try container.encode(decimal, forKey: .decimal) }
        if string != nil { try container.encode(string, forKey: .string) }
        if dateTime != nil { try container.encode(dateTime, forKey: .dateTime) }
        if timeSpan != nil { try container.encode(timeSpan, forKey: .timeSpan) }
        if dateTimeOffset != nil { try container.encode(dateTimeOffset, forKey: .dateTimeOffset) }
        if guid != nil { try container.encode(guid, forKey: .guid) }
        if char != nil { try container.encode(char, forKey: .char) }
        if keyValuePair != nil { try container.encode(keyValuePair, forKey: .keyValuePair) }
        if nullableDateTime != nil { try container.encode(nullableDateTime, forKey: .nullableDateTime) }
        if nullableTimeSpan != nil { try container.encode(nullableTimeSpan, forKey: .nullableTimeSpan) }
        if stringList != nil && stringList!.count > 0 { try container.encode(stringList, forKey: .stringList) }
        if stringArray.count > 0 { try container.encode(stringArray, forKey: .stringArray) }
        if stringMap != nil && stringMap!.count > 0 { try container.encode(stringMap, forKey: .stringMap) }
        if intStringMap != nil && intStringMap!.count > 0 { try container.encode(intStringMap, forKey: .intStringMap) }
        if subType != nil { try container.encode(subType, forKey: .subType) }
    }
}

// @DataContract()
public class HelloBase_1<T : Codable> : Codable
{
    // @DataMember(Order=1)
    public var items:[T]?

    // @DataMember(Order=2)
    public var counts:[Int]?

    required public init(){}
}

// @DataContract()
public class HelloBase : Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    required public init(){}
}

// @NamedConnection("chinook")
// @DataContract()
public class Albums : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var albumId:Int?

    // @DataMember(Order=2)
    // @Required()
    public var title:String?

    // @DataMember(Order=3)
    public var artistId:Int?

    required public init(){}
}

// @NamedConnection("chinook")
// @DataContract()
public class Artists : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var artistId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @NamedConnection("chinook")
// @DataContract()
public class Customers : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var customerId:Int?

    // @DataMember(Order=2)
    // @Required()
    public var firstName:String?

    // @DataMember(Order=3)
    // @Required()
    public var lastName:String?

    // @DataMember(Order=4)
    public var company:String?

    // @DataMember(Order=5)
    public var address:String?

    // @DataMember(Order=6)
    public var city:String?

    // @DataMember(Order=7)
    public var state:String?

    // @DataMember(Order=8)
    public var country:String?

    // @DataMember(Order=9)
    public var postalCode:String?

    // @DataMember(Order=10)
    public var phone:String?

    // @DataMember(Order=11)
    public var fax:String?

    // @DataMember(Order=12)
    // @Required()
    public var email:String?

    // @DataMember(Order=13)
    public var supportRepId:Int?

    required public init(){}
}

// @NamedConnection("chinook")
// @DataContract()
public class Employees : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var employeeId:Int?

    // @DataMember(Order=2)
    // @Required()
    public var lastName:String?

    // @DataMember(Order=3)
    // @Required()
    public var firstName:String?

    // @DataMember(Order=4)
    public var title:String?

    // @DataMember(Order=5)
    public var reportsTo:Int?

    // @DataMember(Order=6)
    public var birthDate:Date?

    // @DataMember(Order=7)
    public var hireDate:Date?

    // @DataMember(Order=8)
    public var address:String?

    // @DataMember(Order=9)
    public var city:String?

    // @DataMember(Order=10)
    public var state:String?

    // @DataMember(Order=11)
    public var country:String?

    // @DataMember(Order=12)
    public var postalCode:String?

    // @DataMember(Order=13)
    public var phone:String?

    // @DataMember(Order=14)
    public var fax:String?

    // @DataMember(Order=15)
    public var email:String?

    required public init(){}
}

// @NamedConnection("chinook")
// @DataContract()
public class Genres : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var genreId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @NamedConnection("chinook")
// @Alias("invoice_items")
// @DataContract()
public class InvoiceItems : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var invoiceLineId:Int?

    // @DataMember(Order=2)
    public var invoiceId:Int?

    // @DataMember(Order=3)
    public var trackId:Int?

    // @DataMember(Order=4)
    public var unitPrice:Double?

    // @DataMember(Order=5)
    public var quantity:Int?

    required public init(){}
}

// @NamedConnection("chinook")
// @DataContract()
public class Invoices : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var invoiceId:Int?

    // @DataMember(Order=2)
    public var customerId:Int?

    // @DataMember(Order=3)
    public var invoiceDate:Date?

    // @DataMember(Order=4)
    public var billingAddress:String?

    // @DataMember(Order=5)
    public var billingCity:String?

    // @DataMember(Order=6)
    public var billingState:String?

    // @DataMember(Order=7)
    public var billingCountry:String?

    // @DataMember(Order=8)
    public var billingPostalCode:String?

    // @DataMember(Order=9)
    public var total:Double?

    required public init(){}
}

// @NamedConnection("chinook")
// @Alias("media_types")
// @DataContract()
public class MediaTypes : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var mediaTypeId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @NamedConnection("chinook")
// @DataContract()
public class Playlists : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var playlistId:Int?

    // @DataMember(Order=2)
    public var name:String?

    required public init(){}
}

// @NamedConnection("chinook")
// @DataContract()
public class Tracks : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var trackId:Int?

    // @DataMember(Order=2)
    // @Required()
    public var name:String?

    // @DataMember(Order=3)
    public var albumId:Int?

    // @DataMember(Order=4)
    public var mediaTypeId:Int?

    // @DataMember(Order=5)
    public var genreId:Int?

    // @DataMember(Order=6)
    public var composer:String?

    // @DataMember(Order=7)
    public var milliseconds:Int?

    // @DataMember(Order=8)
    public var bytes:Int?

    // @DataMember(Order=9)
    public var unitPrice:Double?

    required public init(){}
}

// @DataContract()
public class JobApplicationAttachment : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @References(typeof(JobApplication))
    public var jobApplicationId:Int?

    // @DataMember(Order=3)
    public var fileName:String?

    // @DataMember(Order=4)
    public var filePath:String?

    // @DataMember(Order=5)
    public var contentType:String?

    // @DataMember(Order=6)
    public var contentLength:Int?

    required public init(){}
}

// @Alias("AspNetUsers")
// @DataContract()
public class ApplicationUser : IdentityUser
{
    // @DataMember(Order=1)
    public var firstName:String?

    // @DataMember(Order=2)
    public var lastName:String?

    // @DataMember(Order=3)
    public var displayName:String?

    // @DataMember(Order=4)
    public var profileUrl:String?

    // @DataMember(Order=5)
    public var refreshToken:String?

    // @DataMember(Order=6)
    public var refreshTokenExpiry:Date?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case firstName
        case lastName
        case displayName
        case profileUrl
        case refreshToken
        case refreshTokenExpiry
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        displayName = try container.decodeIfPresent(String.self, forKey: .displayName)
        profileUrl = try container.decodeIfPresent(String.self, forKey: .profileUrl)
        refreshToken = try container.decodeIfPresent(String.self, forKey: .refreshToken)
        refreshTokenExpiry = try container.decodeIfPresent(Date.self, forKey: .refreshTokenExpiry)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if firstName != nil { try container.encode(firstName, forKey: .firstName) }
        if lastName != nil { try container.encode(lastName, forKey: .lastName) }
        if displayName != nil { try container.encode(displayName, forKey: .displayName) }
        if profileUrl != nil { try container.encode(profileUrl, forKey: .profileUrl) }
        if refreshToken != nil { try container.encode(refreshToken, forKey: .refreshToken) }
        if refreshTokenExpiry != nil { try container.encode(refreshTokenExpiry, forKey: .refreshTokenExpiry) }
    }
}

/**
* Booking Details
*/
// @DataContract()
public class Booking : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var roomType:RoomType?

    // @DataMember(Order=4)
    public var roomNumber:Int?

    // @DataMember(Order=5)
    public var bookingStartDate:Date?

    // @DataMember(Order=6)
    public var bookingEndDate:Date?

    // @DataMember(Order=7)
    public var cost:Double?

    // @DataMember(Order=8)
    // @References(typeof(Coupon))
    public var couponId:String?

    // @DataMember(Order=9)
    public var discount:Coupon?

    // @DataMember(Order=10)
    public var notes:String?

    // @DataMember(Order=11)
    public var cancelled:Bool?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case name
        case roomType
        case roomNumber
        case bookingStartDate
        case bookingEndDate
        case cost
        case couponId
        case discount
        case notes
        case cancelled
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        roomType = try container.decodeIfPresent(RoomType.self, forKey: .roomType)
        roomNumber = try container.decodeIfPresent(Int.self, forKey: .roomNumber)
        bookingStartDate = try container.decodeIfPresent(Date.self, forKey: .bookingStartDate)
        bookingEndDate = try container.decodeIfPresent(Date.self, forKey: .bookingEndDate)
        cost = try container.decodeIfPresent(Double.self, forKey: .cost)
        couponId = try container.decodeIfPresent(String.self, forKey: .couponId)
        discount = try container.decodeIfPresent(Coupon.self, forKey: .discount)
        notes = try container.decodeIfPresent(String.self, forKey: .notes)
        cancelled = try container.decodeIfPresent(Bool.self, forKey: .cancelled)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if name != nil { try container.encode(name, forKey: .name) }
        if roomType != nil { try container.encode(roomType, forKey: .roomType) }
        if roomNumber != nil { try container.encode(roomNumber, forKey: .roomNumber) }
        if bookingStartDate != nil { try container.encode(bookingStartDate, forKey: .bookingStartDate) }
        if bookingEndDate != nil { try container.encode(bookingEndDate, forKey: .bookingEndDate) }
        if cost != nil { try container.encode(cost, forKey: .cost) }
        if couponId != nil { try container.encode(couponId, forKey: .couponId) }
        if discount != nil { try container.encode(discount, forKey: .discount) }
        if notes != nil { try container.encode(notes, forKey: .notes) }
        if cancelled != nil { try container.encode(cancelled, forKey: .cancelled) }
    }
}

/**
* Discount Coupons
*/
// @DataContract()
public class Coupon : Codable
{
    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var Description:String?

    // @DataMember(Order=3)
    public var discount:Int?

    // @DataMember(Order=4)
    public var expiryDate:Date?

    required public init(){}
}

// @DataContract()
public enum FileAccessType : String, Codable
{
    case Public
    case Team
    case Private
}

// @DataContract()
public class FileSystemFile : IFile, Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var fileName:String?

    // @DataMember(Order=3)
    public var filePath:String?

    // @DataMember(Order=4)
    public var contentType:String?

    // @DataMember(Order=5)
    public var contentLength:Int?

    // @DataMember(Order=6)
    // @References(typeof(FileSystemItem))
    public var fileSystemItemId:Int?

    required public init(){}
}

// @DataContract()
public class Player : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @Required()
    public var firstName:String?

    // @DataMember(Order=3)
    // @Alias("Surname")
    public var lastName:String?

    // @DataMember(Order=4)
    public var email:String?

    // @DataMember(Order=5)
    public var phoneNumbers:[Phone]?

    // @DataMember(Order=6)
    public var gameItems:[PlayerGameItem]?

    // @DataMember(Order=7)
    public var profile:Profile?

    // @DataMember(Order=8)
    public var profileId:Int?

    // @DataMember(Order=9)
    public var savedLevelId:String?

    // @DataMember(Order=10)
    public var rowVersion:UInt64?

    // @DataMember(Order=11)
    // @Alias("CAPITAL")
    public var capital:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case firstName
        case lastName
        case email
        case phoneNumbers
        case gameItems
        case profile
        case profileId
        case savedLevelId
        case rowVersion
        case capital
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        firstName = try container.decodeIfPresent(String.self, forKey: .firstName)
        lastName = try container.decodeIfPresent(String.self, forKey: .lastName)
        email = try container.decodeIfPresent(String.self, forKey: .email)
        phoneNumbers = try container.decodeIfPresent([Phone].self, forKey: .phoneNumbers) ?? []
        gameItems = try container.decodeIfPresent([PlayerGameItem].self, forKey: .gameItems) ?? []
        profile = try container.decodeIfPresent(Profile.self, forKey: .profile)
        profileId = try container.decodeIfPresent(Int.self, forKey: .profileId)
        savedLevelId = try container.decodeIfPresent(String.self, forKey: .savedLevelId)
        rowVersion = try container.decodeIfPresent(UInt64.self, forKey: .rowVersion)
        capital = try container.decodeIfPresent(String.self, forKey: .capital)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if firstName != nil { try container.encode(firstName, forKey: .firstName) }
        if lastName != nil { try container.encode(lastName, forKey: .lastName) }
        if email != nil { try container.encode(email, forKey: .email) }
        if phoneNumbers != nil && phoneNumbers!.count > 0 { try container.encode(phoneNumbers, forKey: .phoneNumbers) }
        if gameItems != nil && gameItems!.count > 0 { try container.encode(gameItems, forKey: .gameItems) }
        if profile != nil { try container.encode(profile, forKey: .profile) }
        if profileId != nil { try container.encode(profileId, forKey: .profileId) }
        if savedLevelId != nil { try container.encode(savedLevelId, forKey: .savedLevelId) }
        if rowVersion != nil { try container.encode(rowVersion, forKey: .rowVersion) }
        if capital != nil { try container.encode(capital, forKey: .capital) }
    }
}

// @DataContract()
public class Profile : AuditBase
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var role:PlayerRole?

    // @DataMember(Order=3)
    public var region:PlayerRegion?

    // @DataMember(Order=4)
    public var username:String?

    // @DataMember(Order=5)
    public var highScore:Int?

    // @DataMember(Order=6)
    public var gamesPlayed:Int?

    // @DataMember(Order=7)
    public var energy:Int?

    // @DataMember(Order=8)
    public var profileUrl:String?

    // @DataMember(Order=9)
    public var coverUrl:String?

    // @DataMember(Order=10)
    public var meta:[String:String]?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case role
        case region
        case username
        case highScore
        case gamesPlayed
        case energy
        case profileUrl
        case coverUrl
        case meta
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        role = try container.decodeIfPresent(PlayerRole.self, forKey: .role)
        region = try container.decodeIfPresent(PlayerRegion.self, forKey: .region)
        username = try container.decodeIfPresent(String.self, forKey: .username)
        highScore = try container.decodeIfPresent(Int.self, forKey: .highScore)
        gamesPlayed = try container.decodeIfPresent(Int.self, forKey: .gamesPlayed)
        energy = try container.decodeIfPresent(Int.self, forKey: .energy)
        profileUrl = try container.decodeIfPresent(String.self, forKey: .profileUrl)
        coverUrl = try container.decodeIfPresent(String.self, forKey: .coverUrl)
        meta = try container.decodeIfPresent([String:String].self, forKey: .meta) ?? [:]
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if role != nil { try container.encode(role, forKey: .role) }
        if region != nil { try container.encode(region, forKey: .region) }
        if username != nil { try container.encode(username, forKey: .username) }
        if highScore != nil { try container.encode(highScore, forKey: .highScore) }
        if gamesPlayed != nil { try container.encode(gamesPlayed, forKey: .gamesPlayed) }
        if energy != nil { try container.encode(energy, forKey: .energy) }
        if profileUrl != nil { try container.encode(profileUrl, forKey: .profileUrl) }
        if coverUrl != nil { try container.encode(coverUrl, forKey: .coverUrl) }
        if meta != nil && meta!.count > 0 { try container.encode(meta, forKey: .meta) }
    }
}

// @DataContract()
public class GameItem : AuditBase
{
    // @DataMember(Order=1)
    // @PrimaryKey()
    // @StringLength(50)
    public var name:String?

    // @DataMember(Order=2)
    public var imageUrl:String?

    // @DataMember(Order=3)
    // @StringLength(Int32.max)
    public var Description:String?

    // @DataMember(Order=4)
    public var dateAdded:Date?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case name
        case imageUrl
        case Description
        case dateAdded
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        name = try container.decodeIfPresent(String.self, forKey: .name)
        imageUrl = try container.decodeIfPresent(String.self, forKey: .imageUrl)
        Description = try container.decodeIfPresent(String.self, forKey: .Description)
        dateAdded = try container.decodeIfPresent(Date.self, forKey: .dateAdded)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if name != nil { try container.encode(name, forKey: .name) }
        if imageUrl != nil { try container.encode(imageUrl, forKey: .imageUrl) }
        if Description != nil { try container.encode(Description, forKey: .Description) }
        if dateAdded != nil { try container.encode(dateAdded, forKey: .dateAdded) }
    }
}

// @DataContract()
public class PlayerGameItem : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @References(typeof(Player))
    public var playerId:Int?

    // @DataMember(Order=3)
    // @References(typeof(GameItem))
    public var gameItemName:String?

    required public init(){}
}

// @DataContract()
public class Level : Codable
{
    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var data:[UInt8] = []

    required public init(){}
}

// @DataContract
public class ApiKey : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var key:String?

    // @DataMember(Order=3)
    public var name:String?

    // @DataMember(Order=4)
    public var userId:String?

    // @DataMember(Order=5)
    public var userName:String?

    // @DataMember(Order=6)
    public var visibleKey:String?

    // @DataMember(Order=7)
    // @Required()
    public var createdDate:String?

    // @DataMember(Order=8)
    public var expiryDate:String?

    // @DataMember(Order=9)
    public var cancelledDate:String?

    // @DataMember(Order=10)
    public var lastUsedDate:String?

    // @DataMember(Order=11)
    public var scopes:String?

    // @DataMember(Order=12)
    public var features:String?

    // @DataMember(Order=13)
    public var restrictTo:String?

    // @DataMember(Order=14)
    public var environment:String?

    // @DataMember(Order=15)
    public var notes:String?

    // @DataMember(Order=16)
    public var refId:Int?

    // @DataMember(Order=17)
    public var refIdStr:String?

    // @DataMember(Order=18)
    public var meta:String?

    required public init(){}
}

// @DataContract
public class AspNetRoleClaims : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @Required()
    public var roleId:String?

    // @DataMember(Order=3)
    public var claimType:String?

    // @DataMember(Order=4)
    public var claimValue:String?

    required public init(){}
}

// @DataContract
public class AspNetRoles : Codable
{
    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var normalizedName:String?

    // @DataMember(Order=4)
    public var concurrencyStamp:String?

    required public init(){}
}

// @DataContract
public class AspNetUserClaims : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @Required()
    public var userId:String?

    // @DataMember(Order=3)
    public var claimType:String?

    // @DataMember(Order=4)
    public var claimValue:String?

    required public init(){}
}

// @DataContract
public class AspNetUsers : Codable
{
    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var firstName:String?

    // @DataMember(Order=3)
    public var lastName:String?

    // @DataMember(Order=4)
    public var displayName:String?

    // @DataMember(Order=5)
    public var profileUrl:String?

    // @DataMember(Order=6)
    public var refreshToken:String?

    // @DataMember(Order=7)
    public var refreshTokenExpiry:String?

    // @DataMember(Order=8)
    public var userName:String?

    // @DataMember(Order=9)
    public var normalizedUserName:String?

    // @DataMember(Order=10)
    public var email:String?

    // @DataMember(Order=11)
    public var normalizedEmail:String?

    // @DataMember(Order=12)
    public var emailConfirmed:Int?

    // @DataMember(Order=13)
    public var passwordHash:String?

    // @DataMember(Order=14)
    public var securityStamp:String?

    // @DataMember(Order=15)
    public var concurrencyStamp:String?

    // @DataMember(Order=16)
    public var phoneNumber:String?

    // @DataMember(Order=17)
    public var phoneNumberConfirmed:Int?

    // @DataMember(Order=18)
    public var twoFactorEnabled:Int?

    // @DataMember(Order=19)
    public var lockoutEnd:String?

    // @DataMember(Order=20)
    public var lockoutEnabled:Int?

    // @DataMember(Order=21)
    public var accessFailedCount:Int?

    required public init(){}
}

// @DataContract
public class CrudEvent : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var eventType:String?

    // @DataMember(Order=3)
    public var model:String?

    // @DataMember(Order=4)
    public var modelId:String?

    // @DataMember(Order=5)
    public var eventDate:Date?

    // @DataMember(Order=6)
    public var rowsUpdated:Int?

    // @DataMember(Order=7)
    public var requestType:String?

    // @DataMember(Order=8)
    // @StringLength(Int32.max)
    public var requestBody:String?

    // @DataMember(Order=9)
    public var userAuthId:String?

    // @DataMember(Order=10)
    public var userAuthName:String?

    // @DataMember(Order=11)
    public var remoteIp:String?

    // @DataMember(Order=12)
    public var urn:String?

    // @DataMember(Order=13)
    public var refId:Int?

    // @DataMember(Order=14)
    public var refIdStr:String?

    // @DataMember(Order=15)
    public var meta:[String:String]?

    required public init(){}
}

// @Alias("__EFMigrationsHistory")
// @DataContract
public class EFMigrationsHistory : Codable
{
    // @DataMember(Order=1)
    // @PrimaryKey()
    public var migrationId:String?

    // @DataMember(Order=2)
    // @Required()
    public var productVersion:String?

    required public init(){}
}

// @DataContract
public class Migration : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var Description:String?

    // @DataMember(Order=4)
    // @Required()
    public var createdDate:String?

    // @DataMember(Order=5)
    public var completedDate:String?

    // @DataMember(Order=6)
    public var connectionString:String?

    // @DataMember(Order=7)
    public var namedConnection:String?

    // @DataMember(Order=8)
    public var log:String?

    // @DataMember(Order=9)
    public var errorCode:String?

    // @DataMember(Order=10)
    public var errorMessage:String?

    // @DataMember(Order=11)
    public var errorStackTrace:String?

    // @DataMember(Order=12)
    public var meta:String?

    required public init(){}
}

// @DataContract()
public class ValidationRule : ValidateRule
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    // @Required()
    public var type:String?

    // @DataMember(Order=3)
    public var field:String?

    // @DataMember(Order=4)
    public var createdBy:String?

    // @DataMember(Order=5)
    public var createdDate:Date?

    // @DataMember(Order=6)
    public var modifiedBy:String?

    // @DataMember(Order=7)
    public var modifiedDate:Date?

    // @DataMember(Order=8)
    public var suspendedBy:String?

    // @DataMember(Order=9)
    public var suspendedDate:Date?

    // @DataMember(Order=10)
    public var notes:String?

    required public init(){ super.init() }

    private enum CodingKeys : String, CodingKey {
        case id
        case type
        case field
        case createdBy
        case createdDate
        case modifiedBy
        case modifiedDate
        case suspendedBy
        case suspendedDate
        case notes
    }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
        let container = try decoder.container(keyedBy: CodingKeys.self)
        id = try container.decodeIfPresent(Int.self, forKey: .id)
        type = try container.decodeIfPresent(String.self, forKey: .type)
        field = try container.decodeIfPresent(String.self, forKey: .field)
        createdBy = try container.decodeIfPresent(String.self, forKey: .createdBy)
        createdDate = try container.decodeIfPresent(Date.self, forKey: .createdDate)
        modifiedBy = try container.decodeIfPresent(String.self, forKey: .modifiedBy)
        modifiedDate = try container.decodeIfPresent(Date.self, forKey: .modifiedDate)
        suspendedBy = try container.decodeIfPresent(String.self, forKey: .suspendedBy)
        suspendedDate = try container.decodeIfPresent(Date.self, forKey: .suspendedDate)
        notes = try container.decodeIfPresent(String.self, forKey: .notes)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
        var container = encoder.container(keyedBy: CodingKeys.self)
        if id != nil { try container.encode(id, forKey: .id) }
        if type != nil { try container.encode(type, forKey: .type) }
        if field != nil { try container.encode(field, forKey: .field) }
        if createdBy != nil { try container.encode(createdBy, forKey: .createdBy) }
        if createdDate != nil { try container.encode(createdDate, forKey: .createdDate) }
        if modifiedBy != nil { try container.encode(modifiedBy, forKey: .modifiedBy) }
        if modifiedDate != nil { try container.encode(modifiedDate, forKey: .modifiedDate) }
        if suspendedBy != nil { try container.encode(suspendedBy, forKey: .suspendedBy) }
        if suspendedDate != nil { try container.encode(suspendedDate, forKey: .suspendedDate) }
        if notes != nil { try container.encode(notes, forKey: .notes) }
    }
}

// @DataContract()
public enum EmploymentType : String, Codable
{
    case FullTime
    case PartTime
    case Casual
    case Contract
}

// @DataContract()
public enum RoomType : String, Codable
{
    case Single
    case Double
    case Queen
    case Twin
    case Suite
}

// @DataContract()
public protocol IFileItem
{
    // @DataMember(Order=1)
    var fileAccessType:FileAccessType? { get set }

}

// @DataContract()
public class Phone : Codable
{
    // @DataMember(Order=1)
    public var kind:PhoneKind?

    // @DataMember(Order=2)
    public var number:String?

    // @DataMember(Order=3)
    public var ext:String?

    required public init(){}
}

// @DataContract()
public enum PlayerRole : String, Codable
{
    case Leader
    case Player
    case NonPlayer
}

// @DataContract()
public enum PlayerRegion : Int, Codable
{
    case Africa = 1
    case Americas = 2
    case Asia = 3
    case Australasia = 4
    case Europe = 5
}

// @DataContract()
public class BackgroundJobRef : Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var refId:String?

    required public init(){}
}

// @DataContract()
public class Item : Codable
{
    // @DataMember(Order=1)
    public var name:String?

    // @DataMember(Order=2)
    public var Description:String?

    required public init(){}
}

// @DataContract()
public class WorkerStats : Codable
{
    // @DataMember(Order=1)
    public var name:String?

    // @DataMember(Order=2)
    public var queued:Int?

    // @DataMember(Order=3)
    public var received:Int?

    // @DataMember(Order=4)
    public var completed:Int?

    // @DataMember(Order=5)
    public var retries:Int?

    // @DataMember(Order=6)
    public var failed:Int?

    // @DataMember(Order=7)
    public var runningJob:Int?

    // @DataMember(Order=8)
    @TimeSpan public var runningTime:TimeInterval?

    required public init(){}
}

// @DataContract()
public class Choice : Codable
{
    /**
    * The reason the model stopped generating tokens. This will be stop if the model hit a natural stop point or a provided stop sequence, length if the maximum number of tokens specified in the request was reached, content_filter if content was omitted due to a flag from our content filters, tool_calls if the model called a tool
    */
    // @DataMember(Name="finish_reason", Order=1)
    public var finish_reason:String?

    /**
    * The index of the choice in the list of choices.
    */
    // @DataMember(Name="index", Order=2)
    public var index:Int?

    /**
    * A chat completion message generated by the model.
    */
    // @DataMember(Name="message", Order=3)
    public var message:ChoiceMessage?

    required public init(){}
}

/**
* Usage statistics for the completion request.
*/
// @DataContract
public class OpenAiUsage : Codable
{
    /**
    * Number of tokens in the generated completion.
    */
    // @DataMember(Name="completion_tokens", Order=1)
    public var completion_tokens:Int?

    /**
    * Number of tokens in the prompt.
    */
    // @DataMember(Name="prompt_tokens", Order=2)
    public var prompt_tokens:Int?

    /**
    * Total number of tokens used in the request (prompt + completion).
    */
    // @DataMember(Name="total_tokens", Order=3)
    public var total_tokens:Int?

    required public init(){}
}

/**
* Output object for generated artifacts
*/
// @DataContract()
public class ArtifactOutput : Codable
{
    /**
    * URL to access the generated image
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="URL to access the generated image")
    public var url:String?

    /**
    * Filename of the generated image
    */
    // @DataMember(Order=2)
    // @ApiMember(Description="Filename of the generated image")
    public var fileName:String?

    /**
    * Provider used for image generation
    */
    // @DataMember(Order=3)
    // @ApiMember(Description="Provider used for image generation")
    public var provider:String?

    required public init(){}
}

/**
* Output object for generated text
*/
// @DataContract()
public class TextOutput : Codable
{
    /**
    * The generated text
    */
    // @DataMember(Order=1)
    // @ApiMember(Description="The generated text")
    public var text:String?

    required public init(){}
}

// @DataContract()
public class ListResult : Codable
{
    // @DataMember(Order=1)
    public var result:String?

    required public init(){}
}

// @DataContract()
public class ServerStats : Codable
{
    // @DataMember(Order=1)
    public var redis:[String:Int]?

    // @DataMember(Order=2)
    public var serverEvents:[String:String]?

    // @DataMember(Order=3)
    public var mqDescription:String?

    // @DataMember(Order=4)
    public var mqWorkers:[String:Int]?

    required public init(){}
}

// @DataContract()
public class MetadataPropertyType : Codable
{
    // @DataMember(Order=1)
    public var name:String?

    // @DataMember(Order=2)
    public var type:String?

    // @DataMember(Order=3)
    public var namespace:String?

    // @DataMember(Order=4)
    public var isValueType:Bool?

    // @DataMember(Order=5)
    public var isEnum:Bool?

    // @DataMember(Order=6)
    public var isPrimaryKey:Bool?

    // @DataMember(Order=7)
    public var genericArgs:[String] = []

    // @DataMember(Order=8)
    public var value:String?

    // @DataMember(Order=9)
    public var Description:String?

    // @DataMember(Order=10)
    public var dataMember:MetadataDataMember?

    // @DataMember(Order=11)
    public var readOnly:Bool?

    // @DataMember(Order=12)
    public var paramType:String?

    // @DataMember(Order=13)
    public var displayType:String?

    // @DataMember(Order=14)
    public var isRequired:Bool?

    // @DataMember(Order=15)
    public var allowableValues:[String] = []

    // @DataMember(Order=16)
    public var allowableMin:Int?

    // @DataMember(Order=17)
    public var allowableMax:Int?

    // @DataMember(Order=18)
    public var attributes:[MetadataAttribute]?

    // @DataMember(Order=19)
    public var uploadTo:String?

    // @DataMember(Order=20)
    public var input:InputInfo?

    // @DataMember(Order=21)
    public var format:FormatInfo?

    // @DataMember(Order=22)
    public var ref:RefInfo?

    required public init(){}
}

// @DataContract()
public class DiagnosticEntry : Codable
{
    // @DataMember(Order=1)
    public var id:Int?

    // @DataMember(Order=2)
    public var traceId:String?

    // @DataMember(Order=3)
    public var source:String?

    // @DataMember(Order=4)
    public var eventType:String?

    // @DataMember(Order=5)
    public var message:String?

    // @DataMember(Order=6)
    public var operation:String?

    // @DataMember(Order=7)
    public var threadId:Int?

    // @DataMember(Order=8)
    public var error:ResponseStatus?

    // @DataMember(Order=9)
    public var commandType:String?

    // @DataMember(Order=10)
    public var command:String?

    // @DataMember(Order=11)
    public var userAuthId:String?

    // @DataMember(Order=12)
    public var sessionId:String?

    // @DataMember(Order=13)
    public var arg:String?

    // @DataMember(Order=14)
    public var args:[String]?

    // @DataMember(Order=15)
    public var argLengths:[Int]?

    // @DataMember(Order=16)
    public var namedArgs:[String:String]?

    // @DataMember(Order=17)
    @TimeSpan public var duration:TimeInterval?

    // @DataMember(Order=18)
    public var timestamp:Int?

    // @DataMember(Order=19)
    public var date:Date?

    // @DataMember(Order=20)
    public var tag:String?

    // @DataMember(Order=21)
    public var stackTrace:String?

    // @DataMember(Order=22)
    public var meta:[String:String]?

    required public init(){}
}

// @DataContract()
public class RequestLogEntry : Codable
{
    // @DataMember(Order=1)
    // @AutoIncrement()
    public var id:Int?

    // @DataMember(Order=2)
    public var traceId:String?

    // @DataMember(Order=3)
    public var operationName:String?

    // @DataMember(Order=4)
    public var dateTime:Date?

    // @DataMember(Order=5)
    public var statusCode:Int?

    // @DataMember(Order=6)
    public var statusDescription:String?

    // @DataMember(Order=7)
    public var httpMethod:String?

    // @DataMember(Order=8)
    public var absoluteUri:String?

    // @DataMember(Order=9)
    public var pathInfo:String?

    // @DataMember(Order=10)
    // @StringLength(Int32.max)
    public var requestBody:String?

    // @DataMember(Order=11)
    public var requestDto:String?

    // @DataMember(Order=12)
    public var userAuthId:String?

    // @DataMember(Order=13)
    public var sessionId:String?

    // @DataMember(Order=14)
    public var ipAddress:String?

    // @DataMember(Order=15)
    public var forwardedFor:String?

    // @DataMember(Order=16)
    public var referer:String?

    // @DataMember(Order=17)
    public var headers:[String:String]?

    // @DataMember(Order=18)
    public var formData:[String:String]?

    // @DataMember(Order=19)
    public var items:[String:String]?

    // @DataMember(Order=20)
    public var responseHeaders:[String:String]?

    // @DataMember(Order=21)
    public var session:String?

    // @DataMember(Order=22)
    public var responseDto:String?

    // @DataMember(Order=23)
    public var errorResponse:String?

    // @DataMember(Order=24)
    public var exceptionSource:String?

    // @DataMember(Order=25)
    public var exceptionData:[String:String]?

    // @DataMember(Order=26)
    @TimeSpan public var requestDuration:TimeInterval?

    // @DataMember(Order=27)
    public var meta:[String:String]?

    required public init(){}
}

/**
* The tool calls generated by the model, such as function calls.
*/
// @DataContract
public class ToolCall : Codable
{
    /**
    * The ID of the tool call.
    */
    // @DataMember(Name="id", Order=1)
    public var id:String?

    /**
    * The type of the tool. Currently, only `function` is supported.
    */
    // @DataMember(Name="type", Order=2)
    public var type:String?

    /**
    * The function that the model called.
    */
    // @DataMember(Name="function", Order=3)
    public var function:String?

    required public init(){}
}

// @DataContract()
public enum ResponseFormat : String, Codable
{
    case Text
    case JsonObject
}

// @DataContract()
public enum OpenAiToolType : String, Codable
{
    case Function
}

// @DataContract()
public class IdentityUser : IdentityUser_1<String>
{
    required public init(){ super.init() }

    required public init(from decoder: Decoder) throws {
        try super.init(from: decoder)
    }

    public override func encode(to encoder: Encoder) throws {
        try super.encode(to: encoder)
    }
}

// @DataContract()
public protocol IFile
{
    // @DataMember(Order=1)
    var id:Int? { get set }

    // @DataMember(Order=2)
    var fileName:String? { get set }

    // @DataMember(Order=3)
    var filePath:String? { get set }

    // @DataMember(Order=4)
    var contentType:String? { get set }

    // @DataMember(Order=5)
    var contentLength:Int? { get set }

}

// @DataContract()
public class ValidateRule : Codable
{
    // @DataMember(Order=1)
    public var validator:String?

    // @DataMember(Order=2)
    public var condition:String?

    // @DataMember(Order=3)
    public var errorCode:String?

    // @DataMember(Order=4)
    public var message:String?

    required public init(){}
}

// @DataContract()
public enum PhoneKind : String, Codable
{
    case Home
    case Mobile
    case Work
}

// @DataContract
public class ChoiceMessage : Codable
{
    /**
    * The contents of the message.
    */
    // @DataMember(Name="content", Order=1)
    public var content:String?

    /**
    * The tool calls generated by the model, such as function calls.
    */
    // @DataMember(Name="tool_calls", Order=2)
    public var tool_calls:[ToolCall] = []

    /**
    * The role of the author of this message.
    */
    // @DataMember(Name="role", Order=3)
    public var role:String?

    required public init(){}
}

// @DataContract()
public class MetadataDataMember : Codable
{
    // @DataMember(Order=1)
    public var name:String?

    // @DataMember(Order=2)
    public var order:Int?

    // @DataMember(Order=3)
    public var isRequired:Bool?

    // @DataMember(Order=4)
    public var emitDefaultValue:Bool?

    required public init(){}
}

// @DataContract()
public class MetadataAttribute : Codable
{
    // @DataMember(Order=1)
    public var name:String?

    // @DataMember(Order=2)
    public var constructorArgs:[MetadataPropertyType]?

    // @DataMember(Order=3)
    public var args:[MetadataPropertyType]?

    required public init(){}
}

// @DataContract()
public class InputInfo : Codable
{
    // @DataMember(Order=1)
    public var id:String?

    // @DataMember(Order=2)
    public var name:String?

    // @DataMember(Order=3)
    public var type:String?

    // @DataMember(Order=4)
    public var value:String?

    // @DataMember(Order=5)
    public var placeholder:String?

    // @DataMember(Order=6)
    public var help:String?

    // @DataMember(Order=7)
    public var label:String?

    // @DataMember(Order=8)
    public var title:String?

    // @DataMember(Order=9)
    public var size:String?

    // @DataMember(Order=10)
    public var pattern:String?

    // @DataMember(Order=11)
    public var readOnly:Bool?

    // @DataMember(Order=12)
    public var required:Bool?

    // @DataMember(Order=13)
    public var disabled:Bool?

    // @DataMember(Order=14)
    public var autocomplete:String?

    // @DataMember(Order=15)
    public var autofocus:String?

    // @DataMember(Order=16)
    public var min:String?

    // @DataMember(Order=17)
    public var max:String?

    // @DataMember(Order=18)
    public var step:String?

    // @DataMember(Order=19)
    public var minLength:Int?

    // @DataMember(Order=20)
    public var maxLength:Int?

    // @DataMember(Order=21)
    public var accept:String?

    // @DataMember(Order=22)
    public var capture:String?

    // @DataMember(Order=23)
    public var multiple:Bool?

    // @DataMember(Order=24)
    public var allowableValues:[String] = []

    // @DataMember(Order=25)
    public var allowableEntries:[KeyValuePair<String, String>] = []

    // @DataMember(Order=26)
    public var options:String?

    // @DataMember(Order=27)
    public var ignore:Bool?

    // @DataMember(Order=28)
    public var css:FieldCss?

    // @DataMember(Order=29)
    public var meta:[String:String]?

    required public init(){}
}

// @DataContract()
public class FormatInfo : Codable
{
    // @DataMember(Order=1)
    public var method:String?

    // @DataMember(Order=2)
    public var options:String?

    // @DataMember(Order=3)
    public var locale:String?

    required public init(){}
}

// @DataContract()
public class RefInfo : Codable
{
    // @DataMember(Order=1)
    public var model:String?

    // @DataMember(Order=2)
    public var selfId:String?

    // @DataMember(Order=3)
    public var refId:String?

    // @DataMember(Order=4)
    public var refLabel:String?

    // @DataMember(Order=5)
    public var queryApi:String?

    required public init(){}
}

// @DataContract()
public class IdentityUser_1<TKey : Codable> : Codable
{
    // @DataMember(Order=1)
    public var id:TKey?

    // @DataMember(Order=2)
    public var userName:String?

    // @DataMember(Order=3)
    public var normalizedUserName:String?

    // @DataMember(Order=4)
    public var email:String?

    // @DataMember(Order=5)
    public var normalizedEmail:String?

    // @DataMember(Order=6)
    public var emailConfirmed:Bool?

    // @DataMember(Order=7)
    public var passwordHash:String?

    // @DataMember(Order=8)
    public var securityStamp:String?

    // @DataMember(Order=9)
    public var concurrencyStamp:String?

    // @DataMember(Order=10)
    public var phoneNumber:String?

    // @DataMember(Order=11)
    public var phoneNumberConfirmed:Bool?

    // @DataMember(Order=12)
    public var twoFactorEnabled:Bool?

    // @DataMember(Order=13)
    public var lockoutEnd:Date?

    // @DataMember(Order=14)
    public var lockoutEnabled:Bool?

    // @DataMember(Order=15)
    public var accessFailedCount:Int?

    required public init(){}
}

// @DataContract()
public class FieldCss : Codable
{
    // @DataMember(Order=1)
    public var field:String?

    // @DataMember(Order=2)
    public var input:String?

    // @DataMember(Order=3)
    public var label:String?

    required public init(){}
}

