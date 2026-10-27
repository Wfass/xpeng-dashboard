.class public Landroidx/exifinterface/media/ExifInterface;
.super Ljava/lang/Object;
.source "ExifInterface.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;,
        Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;,
        Landroidx/exifinterface/media/ExifInterface$IfdType;,
        Landroidx/exifinterface/media/ExifInterface$ExifTag;,
        Landroidx/exifinterface/media/ExifInterface$ExifAttribute;,
        Landroidx/exifinterface/media/ExifInterface$Rational;
    }
.end annotation


# static fields
.field public static final ALTITUDE_ABOVE_SEA_LEVEL:S = 0x0s

.field public static final ALTITUDE_BELOW_SEA_LEVEL:S = 0x1s

.field private static final ASCII:Ljava/nio/charset/Charset;

.field public static final BITS_PER_SAMPLE_GREYSCALE_1:[I

.field public static final BITS_PER_SAMPLE_GREYSCALE_2:[I

.field public static final BITS_PER_SAMPLE_RGB:[I

.field static final BYTE_ALIGN_II:S = 0x4949s

.field static final BYTE_ALIGN_MM:S = 0x4d4ds

.field public static final COLOR_SPACE_S_RGB:I = 0x1

.field public static final COLOR_SPACE_UNCALIBRATED:I = 0xffff

.field public static final CONTRAST_HARD:S = 0x2s

.field public static final CONTRAST_NORMAL:S = 0x0s

.field public static final CONTRAST_SOFT:S = 0x1s

.field public static final DATA_DEFLATE_ZIP:I = 0x8

.field public static final DATA_HUFFMAN_COMPRESSED:I = 0x2

.field public static final DATA_JPEG:I = 0x6

.field public static final DATA_JPEG_COMPRESSED:I = 0x7

.field public static final DATA_LOSSY_JPEG:I = 0x884c

.field public static final DATA_PACK_BITS_COMPRESSED:I = 0x8005

.field public static final DATA_UNCOMPRESSED:I = 0x1

.field private static final DEBUG:Z = false

.field private static final EXIF_ASCII_PREFIX:[B

.field private static final EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final EXPOSURE_MODE_AUTO:S = 0x0s

.field public static final EXPOSURE_MODE_AUTO_BRACKET:S = 0x2s

.field public static final EXPOSURE_MODE_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_ACTION:S = 0x6s

.field public static final EXPOSURE_PROGRAM_APERTURE_PRIORITY:S = 0x3s

.field public static final EXPOSURE_PROGRAM_CREATIVE:S = 0x5s

.field public static final EXPOSURE_PROGRAM_LANDSCAPE_MODE:S = 0x8s

.field public static final EXPOSURE_PROGRAM_MANUAL:S = 0x1s

.field public static final EXPOSURE_PROGRAM_NORMAL:S = 0x2s

.field public static final EXPOSURE_PROGRAM_NOT_DEFINED:S = 0x0s

.field public static final EXPOSURE_PROGRAM_PORTRAIT_MODE:S = 0x7s

.field public static final EXPOSURE_PROGRAM_SHUTTER_PRIORITY:S = 0x4s

.field public static final FILE_SOURCE_DSC:S = 0x3s

.field public static final FILE_SOURCE_OTHER:S = 0x0s

.field public static final FILE_SOURCE_REFLEX_SCANNER:S = 0x2s

.field public static final FILE_SOURCE_TRANSPARENT_SCANNER:S = 0x1s

.field public static final FLAG_FLASH_FIRED:S = 0x1s

.field public static final FLAG_FLASH_MODE_AUTO:S = 0x18s

.field public static final FLAG_FLASH_MODE_COMPULSORY_FIRING:S = 0x8s

.field public static final FLAG_FLASH_MODE_COMPULSORY_SUPPRESSION:S = 0x10s

.field public static final FLAG_FLASH_NO_FLASH_FUNCTION:S = 0x20s

.field public static final FLAG_FLASH_RED_EYE_SUPPORTED:S = 0x40s

.field public static final FLAG_FLASH_RETURN_LIGHT_DETECTED:S = 0x6s

.field public static final FLAG_FLASH_RETURN_LIGHT_NOT_DETECTED:S = 0x4s

.field private static final FLIPPED_ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final FORMAT_CHUNKY:S = 0x1s

.field public static final FORMAT_PLANAR:S = 0x2s

.field public static final GAIN_CONTROL_HIGH_GAIN_DOWN:S = 0x4s

.field public static final GAIN_CONTROL_HIGH_GAIN_UP:S = 0x2s

.field public static final GAIN_CONTROL_LOW_GAIN_DOWN:S = 0x3s

.field public static final GAIN_CONTROL_LOW_GAIN_UP:S = 0x1s

.field public static final GAIN_CONTROL_NONE:S = 0x0s

.field public static final GPS_DIRECTION_MAGNETIC:Ljava/lang/String; = "M"

.field public static final GPS_DIRECTION_TRUE:Ljava/lang/String; = "T"

.field public static final GPS_DISTANCE_KILOMETERS:Ljava/lang/String; = "K"

.field public static final GPS_DISTANCE_MILES:Ljava/lang/String; = "M"

.field public static final GPS_DISTANCE_NAUTICAL_MILES:Ljava/lang/String; = "N"

.field public static final GPS_MEASUREMENT_2D:Ljava/lang/String; = "2"

.field public static final GPS_MEASUREMENT_3D:Ljava/lang/String; = "3"

.field public static final GPS_MEASUREMENT_DIFFERENTIAL_CORRECTED:S = 0x1s

.field public static final GPS_MEASUREMENT_INTERRUPTED:Ljava/lang/String; = "V"

.field public static final GPS_MEASUREMENT_IN_PROGRESS:Ljava/lang/String; = "A"

.field public static final GPS_MEASUREMENT_NO_DIFFERENTIAL:S = 0x0s

.field public static final GPS_SPEED_KILOMETERS_PER_HOUR:Ljava/lang/String; = "K"

.field public static final GPS_SPEED_KNOTS:Ljava/lang/String; = "N"

.field public static final GPS_SPEED_MILES_PER_HOUR:Ljava/lang/String; = "M"

.field static final IDENTIFIER_EXIF_APP1:[B

.field private static final IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_FORMAT_BYTE:I = 0x1

.field static final IFD_FORMAT_BYTES_PER_FORMAT:[I

.field private static final IFD_FORMAT_DOUBLE:I = 0xc

.field private static final IFD_FORMAT_IFD:I = 0xd

.field static final IFD_FORMAT_NAMES:[Ljava/lang/String;

.field private static final IFD_FORMAT_SBYTE:I = 0x6

.field private static final IFD_FORMAT_SINGLE:I = 0xb

.field private static final IFD_FORMAT_SLONG:I = 0x9

.field private static final IFD_FORMAT_SRATIONAL:I = 0xa

.field private static final IFD_FORMAT_SSHORT:I = 0x8

.field private static final IFD_FORMAT_STRING:I = 0x2

.field private static final IFD_FORMAT_ULONG:I = 0x4

.field private static final IFD_FORMAT_UNDEFINED:I = 0x7

.field private static final IFD_FORMAT_URATIONAL:I = 0x5

.field private static final IFD_FORMAT_USHORT:I = 0x3

.field private static final IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_OFFSET:I = 0x8

.field private static final IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final IFD_TYPE_EXIF:I = 0x1

.field private static final IFD_TYPE_GPS:I = 0x2

.field private static final IFD_TYPE_INTEROPERABILITY:I = 0x3

.field private static final IFD_TYPE_ORF_CAMERA_SETTINGS:I = 0x7

.field private static final IFD_TYPE_ORF_IMAGE_PROCESSING:I = 0x8

.field private static final IFD_TYPE_ORF_MAKER_NOTE:I = 0x6

.field private static final IFD_TYPE_PEF:I = 0x9

.field static final IFD_TYPE_PREVIEW:I = 0x5

.field static final IFD_TYPE_PRIMARY:I = 0x0

.field static final IFD_TYPE_THUMBNAIL:I = 0x4

.field private static final IMAGE_TYPE_ARW:I = 0x1

.field private static final IMAGE_TYPE_CR2:I = 0x2

.field private static final IMAGE_TYPE_DNG:I = 0x3

.field private static final IMAGE_TYPE_JPEG:I = 0x4

.field private static final IMAGE_TYPE_NEF:I = 0x5

.field private static final IMAGE_TYPE_NRW:I = 0x6

.field private static final IMAGE_TYPE_ORF:I = 0x7

.field private static final IMAGE_TYPE_PEF:I = 0x8

.field private static final IMAGE_TYPE_RAF:I = 0x9

.field private static final IMAGE_TYPE_RW2:I = 0xa

.field private static final IMAGE_TYPE_SRW:I = 0xb

.field private static final IMAGE_TYPE_UNKNOWN:I = 0x0

.field private static final JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field static final JPEG_SIGNATURE:[B

.field public static final LATITUDE_NORTH:Ljava/lang/String; = "N"

.field public static final LATITUDE_SOUTH:Ljava/lang/String; = "S"

.field public static final LIGHT_SOURCE_CLOUDY_WEATHER:S = 0xas

.field public static final LIGHT_SOURCE_COOL_WHITE_FLUORESCENT:S = 0xes

.field public static final LIGHT_SOURCE_D50:S = 0x17s

.field public static final LIGHT_SOURCE_D55:S = 0x14s

.field public static final LIGHT_SOURCE_D65:S = 0x15s

.field public static final LIGHT_SOURCE_D75:S = 0x16s

.field public static final LIGHT_SOURCE_DAYLIGHT:S = 0x1s

.field public static final LIGHT_SOURCE_DAYLIGHT_FLUORESCENT:S = 0xcs

.field public static final LIGHT_SOURCE_DAY_WHITE_FLUORESCENT:S = 0xds

.field public static final LIGHT_SOURCE_FINE_WEATHER:S = 0x9s

.field public static final LIGHT_SOURCE_FLASH:S = 0x4s

.field public static final LIGHT_SOURCE_FLUORESCENT:S = 0x2s

.field public static final LIGHT_SOURCE_ISO_STUDIO_TUNGSTEN:S = 0x18s

.field public static final LIGHT_SOURCE_OTHER:S = 0xffs

.field public static final LIGHT_SOURCE_SHADE:S = 0xbs

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_A:S = 0x11s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_B:S = 0x12s

.field public static final LIGHT_SOURCE_STANDARD_LIGHT_C:S = 0x13s

.field public static final LIGHT_SOURCE_TUNGSTEN:S = 0x3s

.field public static final LIGHT_SOURCE_UNKNOWN:S = 0x0s

.field public static final LIGHT_SOURCE_WARM_WHITE_FLUORESCENT:S = 0x10s

.field public static final LIGHT_SOURCE_WHITE_FLUORESCENT:S = 0xfs

.field public static final LONGITUDE_EAST:Ljava/lang/String; = "E"

.field public static final LONGITUDE_WEST:Ljava/lang/String; = "W"

.field static final MARKER:B = -0x1t

.field static final MARKER_APP1:B = -0x1ft

.field private static final MARKER_COM:B = -0x2t

.field static final MARKER_EOI:B = -0x27t

.field private static final MARKER_SOF0:B = -0x40t

.field private static final MARKER_SOF1:B = -0x3ft

.field private static final MARKER_SOF10:B = -0x36t

.field private static final MARKER_SOF11:B = -0x35t

.field private static final MARKER_SOF13:B = -0x33t

.field private static final MARKER_SOF14:B = -0x32t

.field private static final MARKER_SOF15:B = -0x31t

.field private static final MARKER_SOF2:B = -0x3et

.field private static final MARKER_SOF3:B = -0x3dt

.field private static final MARKER_SOF5:B = -0x3bt

.field private static final MARKER_SOF6:B = -0x3at

.field private static final MARKER_SOF7:B = -0x39t

.field private static final MARKER_SOF9:B = -0x37t

.field private static final MARKER_SOI:B = -0x28t

.field private static final MARKER_SOS:B = -0x26t

.field private static final MAX_THUMBNAIL_SIZE:I = 0x200

.field public static final METERING_MODE_AVERAGE:S = 0x1s

.field public static final METERING_MODE_CENTER_WEIGHT_AVERAGE:S = 0x2s

.field public static final METERING_MODE_MULTI_SPOT:S = 0x4s

.field public static final METERING_MODE_OTHER:S = 0xffs

.field public static final METERING_MODE_PARTIAL:S = 0x6s

.field public static final METERING_MODE_PATTERN:S = 0x5s

.field public static final METERING_MODE_SPOT:S = 0x3s

.field public static final METERING_MODE_UNKNOWN:S = 0x0s

.field private static final ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_MAKER_NOTE_HEADER_1:[B

.field private static final ORF_MAKER_NOTE_HEADER_1_SIZE:I = 0x8

.field private static final ORF_MAKER_NOTE_HEADER_2:[B

.field private static final ORF_MAKER_NOTE_HEADER_2_SIZE:I = 0xc

.field private static final ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field private static final ORF_SIGNATURE_1:S = 0x4f52s

.field private static final ORF_SIGNATURE_2:S = 0x5352s

.field public static final ORIENTATION_FLIP_HORIZONTAL:I = 0x2

.field public static final ORIENTATION_FLIP_VERTICAL:I = 0x4

.field public static final ORIENTATION_NORMAL:I = 0x1

.field public static final ORIENTATION_ROTATE_180:I = 0x3

.field public static final ORIENTATION_ROTATE_270:I = 0x8

.field public static final ORIENTATION_ROTATE_90:I = 0x6

.field public static final ORIENTATION_TRANSPOSE:I = 0x5

.field public static final ORIENTATION_TRANSVERSE:I = 0x7

.field public static final ORIENTATION_UNDEFINED:I = 0x0

.field public static final ORIGINAL_RESOLUTION_IMAGE:I = 0x0

.field private static final PEF_MAKER_NOTE_SKIP_SIZE:I = 0x6

.field private static final PEF_SIGNATURE:Ljava/lang/String; = "PENTAX"

.field private static final PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final PHOTOMETRIC_INTERPRETATION_BLACK_IS_ZERO:I = 0x1

.field public static final PHOTOMETRIC_INTERPRETATION_RGB:I = 0x2

.field public static final PHOTOMETRIC_INTERPRETATION_WHITE_IS_ZERO:I = 0x0

.field public static final PHOTOMETRIC_INTERPRETATION_YCBCR:I = 0x6

.field private static final RAF_INFO_SIZE:I = 0xa0

.field private static final RAF_JPEG_LENGTH_VALUE_SIZE:I = 0x4

.field private static final RAF_OFFSET_TO_JPEG_IMAGE_OFFSET:I = 0x54

.field private static final RAF_SIGNATURE:Ljava/lang/String; = "FUJIFILMCCD-RAW"

.field public static final REDUCED_RESOLUTION_IMAGE:I = 0x1

.field public static final RENDERED_PROCESS_CUSTOM:S = 0x1s

.field public static final RENDERED_PROCESS_NORMAL:S = 0x0s

.field public static final RESOLUTION_UNIT_CENTIMETERS:S = 0x3s

.field public static final RESOLUTION_UNIT_INCHES:S = 0x2s

.field private static final ROTATION_ORDER:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final RW2_SIGNATURE:S = 0x55s

.field public static final SATURATION_HIGH:S = 0x0s

.field public static final SATURATION_LOW:S = 0x0s

.field public static final SATURATION_NORMAL:S = 0x0s

.field public static final SCENE_CAPTURE_TYPE_LANDSCAPE:S = 0x1s

.field public static final SCENE_CAPTURE_TYPE_NIGHT:S = 0x3s

.field public static final SCENE_CAPTURE_TYPE_PORTRAIT:S = 0x2s

.field public static final SCENE_CAPTURE_TYPE_STANDARD:S = 0x0s

.field public static final SCENE_TYPE_DIRECTLY_PHOTOGRAPHED:S = 0x1s

.field public static final SENSITIVITY_TYPE_ISO_SPEED:S = 0x3s

.field public static final SENSITIVITY_TYPE_REI:S = 0x2s

.field public static final SENSITIVITY_TYPE_REI_AND_ISO:S = 0x6s

.field public static final SENSITIVITY_TYPE_SOS:S = 0x1s

.field public static final SENSITIVITY_TYPE_SOS_AND_ISO:S = 0x5s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI:S = 0x4s

.field public static final SENSITIVITY_TYPE_SOS_AND_REI_AND_ISO:S = 0x7s

.field public static final SENSITIVITY_TYPE_UNKNOWN:S = 0x0s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL:S = 0x5s

.field public static final SENSOR_TYPE_COLOR_SEQUENTIAL_LINEAR:S = 0x8s

.field public static final SENSOR_TYPE_NOT_DEFINED:S = 0x1s

.field public static final SENSOR_TYPE_ONE_CHIP:S = 0x2s

.field public static final SENSOR_TYPE_THREE_CHIP:S = 0x4s

.field public static final SENSOR_TYPE_TRILINEAR:S = 0x7s

.field public static final SENSOR_TYPE_TWO_CHIP:S = 0x3s

.field public static final SHARPNESS_HARD:S = 0x2s

.field public static final SHARPNESS_NORMAL:S = 0x0s

.field public static final SHARPNESS_SOFT:S = 0x1s

.field private static final SIGNATURE_CHECK_SIZE:I = 0x1388

.field static final START_CODE:B = 0x2at

.field public static final SUBJECT_DISTANCE_RANGE_CLOSE_VIEW:S = 0x2s

.field public static final SUBJECT_DISTANCE_RANGE_DISTANT_VIEW:S = 0x3s

.field public static final SUBJECT_DISTANCE_RANGE_MACRO:S = 0x1s

.field public static final SUBJECT_DISTANCE_RANGE_UNKNOWN:S = 0x0s

.field private static final TAG:Ljava/lang/String; = "ExifInterface"

.field public static final TAG_APERTURE_VALUE:Ljava/lang/String; = "ApertureValue"

.field public static final TAG_ARTIST:Ljava/lang/String; = "Artist"

.field public static final TAG_BITS_PER_SAMPLE:Ljava/lang/String; = "BitsPerSample"

.field public static final TAG_BODY_SERIAL_NUMBER:Ljava/lang/String; = "BodySerialNumber"

.field public static final TAG_BRIGHTNESS_VALUE:Ljava/lang/String; = "BrightnessValue"

.field public static final TAG_CAMARA_OWNER_NAME:Ljava/lang/String; = "CameraOwnerName"

.field public static final TAG_CFA_PATTERN:Ljava/lang/String; = "CFAPattern"

.field public static final TAG_COLOR_SPACE:Ljava/lang/String; = "ColorSpace"

.field public static final TAG_COMPONENTS_CONFIGURATION:Ljava/lang/String; = "ComponentsConfiguration"

.field public static final TAG_COMPRESSED_BITS_PER_PIXEL:Ljava/lang/String; = "CompressedBitsPerPixel"

.field public static final TAG_COMPRESSION:Ljava/lang/String; = "Compression"

.field public static final TAG_CONTRAST:Ljava/lang/String; = "Contrast"

.field public static final TAG_COPYRIGHT:Ljava/lang/String; = "Copyright"

.field public static final TAG_CUSTOM_RENDERED:Ljava/lang/String; = "CustomRendered"

.field public static final TAG_DATETIME:Ljava/lang/String; = "DateTime"

.field public static final TAG_DATETIME_DIGITIZED:Ljava/lang/String; = "DateTimeDigitized"

.field public static final TAG_DATETIME_ORIGINAL:Ljava/lang/String; = "DateTimeOriginal"

.field public static final TAG_DEFAULT_CROP_SIZE:Ljava/lang/String; = "DefaultCropSize"

.field public static final TAG_DEVICE_SETTING_DESCRIPTION:Ljava/lang/String; = "DeviceSettingDescription"

.field public static final TAG_DIGITAL_ZOOM_RATIO:Ljava/lang/String; = "DigitalZoomRatio"

.field public static final TAG_DNG_VERSION:Ljava/lang/String; = "DNGVersion"

.field private static final TAG_EXIF_IFD_POINTER:Ljava/lang/String; = "ExifIFDPointer"

.field public static final TAG_EXIF_VERSION:Ljava/lang/String; = "ExifVersion"

.field public static final TAG_EXPOSURE_BIAS_VALUE:Ljava/lang/String; = "ExposureBiasValue"

.field public static final TAG_EXPOSURE_INDEX:Ljava/lang/String; = "ExposureIndex"

.field public static final TAG_EXPOSURE_MODE:Ljava/lang/String; = "ExposureMode"

.field public static final TAG_EXPOSURE_PROGRAM:Ljava/lang/String; = "ExposureProgram"

.field public static final TAG_EXPOSURE_TIME:Ljava/lang/String; = "ExposureTime"

.field public static final TAG_FILE_SOURCE:Ljava/lang/String; = "FileSource"

.field public static final TAG_FLASH:Ljava/lang/String; = "Flash"

.field public static final TAG_FLASHPIX_VERSION:Ljava/lang/String; = "FlashpixVersion"

.field public static final TAG_FLASH_ENERGY:Ljava/lang/String; = "FlashEnergy"

.field public static final TAG_FOCAL_LENGTH:Ljava/lang/String; = "FocalLength"

.field public static final TAG_FOCAL_LENGTH_IN_35MM_FILM:Ljava/lang/String; = "FocalLengthIn35mmFilm"

.field public static final TAG_FOCAL_PLANE_RESOLUTION_UNIT:Ljava/lang/String; = "FocalPlaneResolutionUnit"

.field public static final TAG_FOCAL_PLANE_X_RESOLUTION:Ljava/lang/String; = "FocalPlaneXResolution"

.field public static final TAG_FOCAL_PLANE_Y_RESOLUTION:Ljava/lang/String; = "FocalPlaneYResolution"

.field public static final TAG_F_NUMBER:Ljava/lang/String; = "FNumber"

.field public static final TAG_GAIN_CONTROL:Ljava/lang/String; = "GainControl"

.field public static final TAG_GAMMA:Ljava/lang/String; = "Gamma"

.field public static final TAG_GPS_ALTITUDE:Ljava/lang/String; = "GPSAltitude"

.field public static final TAG_GPS_ALTITUDE_REF:Ljava/lang/String; = "GPSAltitudeRef"

.field public static final TAG_GPS_AREA_INFORMATION:Ljava/lang/String; = "GPSAreaInformation"

.field public static final TAG_GPS_DATESTAMP:Ljava/lang/String; = "GPSDateStamp"

.field public static final TAG_GPS_DEST_BEARING:Ljava/lang/String; = "GPSDestBearing"

.field public static final TAG_GPS_DEST_BEARING_REF:Ljava/lang/String; = "GPSDestBearingRef"

.field public static final TAG_GPS_DEST_DISTANCE:Ljava/lang/String; = "GPSDestDistance"

.field public static final TAG_GPS_DEST_DISTANCE_REF:Ljava/lang/String; = "GPSDestDistanceRef"

.field public static final TAG_GPS_DEST_LATITUDE:Ljava/lang/String; = "GPSDestLatitude"

.field public static final TAG_GPS_DEST_LATITUDE_REF:Ljava/lang/String; = "GPSDestLatitudeRef"

.field public static final TAG_GPS_DEST_LONGITUDE:Ljava/lang/String; = "GPSDestLongitude"

.field public static final TAG_GPS_DEST_LONGITUDE_REF:Ljava/lang/String; = "GPSDestLongitudeRef"

.field public static final TAG_GPS_DIFFERENTIAL:Ljava/lang/String; = "GPSDifferential"

.field public static final TAG_GPS_DOP:Ljava/lang/String; = "GPSDOP"

.field public static final TAG_GPS_H_POSITIONING_ERROR:Ljava/lang/String; = "GPSHPositioningError"

.field public static final TAG_GPS_IMG_DIRECTION:Ljava/lang/String; = "GPSImgDirection"

.field public static final TAG_GPS_IMG_DIRECTION_REF:Ljava/lang/String; = "GPSImgDirectionRef"

.field private static final TAG_GPS_INFO_IFD_POINTER:Ljava/lang/String; = "GPSInfoIFDPointer"

.field public static final TAG_GPS_LATITUDE:Ljava/lang/String; = "GPSLatitude"

.field public static final TAG_GPS_LATITUDE_REF:Ljava/lang/String; = "GPSLatitudeRef"

.field public static final TAG_GPS_LONGITUDE:Ljava/lang/String; = "GPSLongitude"

.field public static final TAG_GPS_LONGITUDE_REF:Ljava/lang/String; = "GPSLongitudeRef"

.field public static final TAG_GPS_MAP_DATUM:Ljava/lang/String; = "GPSMapDatum"

.field public static final TAG_GPS_MEASURE_MODE:Ljava/lang/String; = "GPSMeasureMode"

.field public static final TAG_GPS_PROCESSING_METHOD:Ljava/lang/String; = "GPSProcessingMethod"

.field public static final TAG_GPS_SATELLITES:Ljava/lang/String; = "GPSSatellites"

.field public static final TAG_GPS_SPEED:Ljava/lang/String; = "GPSSpeed"

.field public static final TAG_GPS_SPEED_REF:Ljava/lang/String; = "GPSSpeedRef"

.field public static final TAG_GPS_STATUS:Ljava/lang/String; = "GPSStatus"

.field public static final TAG_GPS_TIMESTAMP:Ljava/lang/String; = "GPSTimeStamp"

.field public static final TAG_GPS_TRACK:Ljava/lang/String; = "GPSTrack"

.field public static final TAG_GPS_TRACK_REF:Ljava/lang/String; = "GPSTrackRef"

.field public static final TAG_GPS_VERSION_ID:Ljava/lang/String; = "GPSVersionID"

.field private static final TAG_HAS_THUMBNAIL:Ljava/lang/String; = "HasThumbnail"

.field public static final TAG_IMAGE_DESCRIPTION:Ljava/lang/String; = "ImageDescription"

.field public static final TAG_IMAGE_LENGTH:Ljava/lang/String; = "ImageLength"

.field public static final TAG_IMAGE_UNIQUE_ID:Ljava/lang/String; = "ImageUniqueID"

.field public static final TAG_IMAGE_WIDTH:Ljava/lang/String; = "ImageWidth"

.field private static final TAG_INTEROPERABILITY_IFD_POINTER:Ljava/lang/String; = "InteroperabilityIFDPointer"

.field public static final TAG_INTEROPERABILITY_INDEX:Ljava/lang/String; = "InteroperabilityIndex"

.field public static final TAG_ISO_SPEED:Ljava/lang/String; = "ISOSpeed"

.field public static final TAG_ISO_SPEED_LATITUDE_YYY:Ljava/lang/String; = "ISOSpeedLatitudeyyy"

.field public static final TAG_ISO_SPEED_LATITUDE_ZZZ:Ljava/lang/String; = "ISOSpeedLatitudezzz"

.field public static final TAG_ISO_SPEED_RATINGS:Ljava/lang/String; = "ISOSpeedRatings"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final TAG_JPEG_INTERCHANGE_FORMAT:Ljava/lang/String; = "JPEGInterchangeFormat"

.field public static final TAG_JPEG_INTERCHANGE_FORMAT_LENGTH:Ljava/lang/String; = "JPEGInterchangeFormatLength"

.field public static final TAG_LENS_MAKE:Ljava/lang/String; = "LensMake"

.field public static final TAG_LENS_MODEL:Ljava/lang/String; = "LensModel"

.field public static final TAG_LENS_SERIAL_NUMBER:Ljava/lang/String; = "LensSerialNumber"

.field public static final TAG_LENS_SPECIFICATION:Ljava/lang/String; = "LensSpecification"

.field public static final TAG_LIGHT_SOURCE:Ljava/lang/String; = "LightSource"

.field public static final TAG_MAKE:Ljava/lang/String; = "Make"

.field public static final TAG_MAKER_NOTE:Ljava/lang/String; = "MakerNote"

.field public static final TAG_MAX_APERTURE_VALUE:Ljava/lang/String; = "MaxApertureValue"

.field public static final TAG_METERING_MODE:Ljava/lang/String; = "MeteringMode"

.field public static final TAG_MODEL:Ljava/lang/String; = "Model"

.field public static final TAG_NEW_SUBFILE_TYPE:Ljava/lang/String; = "NewSubfileType"

.field public static final TAG_OECF:Ljava/lang/String; = "OECF"

.field public static final TAG_ORF_ASPECT_FRAME:Ljava/lang/String; = "AspectFrame"

.field private static final TAG_ORF_CAMERA_SETTINGS_IFD_POINTER:Ljava/lang/String; = "CameraSettingsIFDPointer"

.field private static final TAG_ORF_IMAGE_PROCESSING_IFD_POINTER:Ljava/lang/String; = "ImageProcessingIFDPointer"

.field public static final TAG_ORF_PREVIEW_IMAGE_LENGTH:Ljava/lang/String; = "PreviewImageLength"

.field public static final TAG_ORF_PREVIEW_IMAGE_START:Ljava/lang/String; = "PreviewImageStart"

.field public static final TAG_ORF_THUMBNAIL_IMAGE:Ljava/lang/String; = "ThumbnailImage"

.field public static final TAG_ORIENTATION:Ljava/lang/String; = "Orientation"

.field public static final TAG_PHOTOGRAPHIC_SENSITIVITY:Ljava/lang/String; = "PhotographicSensitivity"

.field public static final TAG_PHOTOMETRIC_INTERPRETATION:Ljava/lang/String; = "PhotometricInterpretation"

.field public static final TAG_PIXEL_X_DIMENSION:Ljava/lang/String; = "PixelXDimension"

.field public static final TAG_PIXEL_Y_DIMENSION:Ljava/lang/String; = "PixelYDimension"

.field public static final TAG_PLANAR_CONFIGURATION:Ljava/lang/String; = "PlanarConfiguration"

.field public static final TAG_PRIMARY_CHROMATICITIES:Ljava/lang/String; = "PrimaryChromaticities"

.field private static final TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

.field public static final TAG_RECOMMENDED_EXPOSURE_INDEX:Ljava/lang/String; = "RecommendedExposureIndex"

.field public static final TAG_REFERENCE_BLACK_WHITE:Ljava/lang/String; = "ReferenceBlackWhite"

.field public static final TAG_RELATED_SOUND_FILE:Ljava/lang/String; = "RelatedSoundFile"

.field public static final TAG_RESOLUTION_UNIT:Ljava/lang/String; = "ResolutionUnit"

.field public static final TAG_ROWS_PER_STRIP:Ljava/lang/String; = "RowsPerStrip"

.field public static final TAG_RW2_ISO:Ljava/lang/String; = "ISO"

.field public static final TAG_RW2_JPG_FROM_RAW:Ljava/lang/String; = "JpgFromRaw"

.field public static final TAG_RW2_SENSOR_BOTTOM_BORDER:Ljava/lang/String; = "SensorBottomBorder"

.field public static final TAG_RW2_SENSOR_LEFT_BORDER:Ljava/lang/String; = "SensorLeftBorder"

.field public static final TAG_RW2_SENSOR_RIGHT_BORDER:Ljava/lang/String; = "SensorRightBorder"

.field public static final TAG_RW2_SENSOR_TOP_BORDER:Ljava/lang/String; = "SensorTopBorder"

.field public static final TAG_SAMPLES_PER_PIXEL:Ljava/lang/String; = "SamplesPerPixel"

.field public static final TAG_SATURATION:Ljava/lang/String; = "Saturation"

.field public static final TAG_SCENE_CAPTURE_TYPE:Ljava/lang/String; = "SceneCaptureType"

.field public static final TAG_SCENE_TYPE:Ljava/lang/String; = "SceneType"

.field public static final TAG_SENSING_METHOD:Ljava/lang/String; = "SensingMethod"

.field public static final TAG_SENSITIVITY_TYPE:Ljava/lang/String; = "SensitivityType"

.field public static final TAG_SHARPNESS:Ljava/lang/String; = "Sharpness"

.field public static final TAG_SHUTTER_SPEED_VALUE:Ljava/lang/String; = "ShutterSpeedValue"

.field public static final TAG_SOFTWARE:Ljava/lang/String; = "Software"

.field public static final TAG_SPATIAL_FREQUENCY_RESPONSE:Ljava/lang/String; = "SpatialFrequencyResponse"

.field public static final TAG_SPECTRAL_SENSITIVITY:Ljava/lang/String; = "SpectralSensitivity"

.field public static final TAG_STANDARD_OUTPUT_SENSITIVITY:Ljava/lang/String; = "StandardOutputSensitivity"

.field public static final TAG_STRIP_BYTE_COUNTS:Ljava/lang/String; = "StripByteCounts"

.field public static final TAG_STRIP_OFFSETS:Ljava/lang/String; = "StripOffsets"

.field public static final TAG_SUBFILE_TYPE:Ljava/lang/String; = "SubfileType"

.field public static final TAG_SUBJECT_AREA:Ljava/lang/String; = "SubjectArea"

.field public static final TAG_SUBJECT_DISTANCE:Ljava/lang/String; = "SubjectDistance"

.field public static final TAG_SUBJECT_DISTANCE_RANGE:Ljava/lang/String; = "SubjectDistanceRange"

.field public static final TAG_SUBJECT_LOCATION:Ljava/lang/String; = "SubjectLocation"

.field public static final TAG_SUBSEC_TIME:Ljava/lang/String; = "SubSecTime"

.field public static final TAG_SUBSEC_TIME_DIGITIZED:Ljava/lang/String; = "SubSecTimeDigitized"

.field public static final TAG_SUBSEC_TIME_ORIGINAL:Ljava/lang/String; = "SubSecTimeOriginal"

.field private static final TAG_SUB_IFD_POINTER:Ljava/lang/String; = "SubIFDPointer"

.field private static final TAG_THUMBNAIL_DATA:Ljava/lang/String; = "ThumbnailData"

.field public static final TAG_THUMBNAIL_IMAGE_LENGTH:Ljava/lang/String; = "ThumbnailImageLength"

.field public static final TAG_THUMBNAIL_IMAGE_WIDTH:Ljava/lang/String; = "ThumbnailImageWidth"

.field private static final TAG_THUMBNAIL_LENGTH:Ljava/lang/String; = "ThumbnailLength"

.field private static final TAG_THUMBNAIL_OFFSET:Ljava/lang/String; = "ThumbnailOffset"

.field public static final TAG_TRANSFER_FUNCTION:Ljava/lang/String; = "TransferFunction"

.field public static final TAG_USER_COMMENT:Ljava/lang/String; = "UserComment"

.field public static final TAG_WHITE_BALANCE:Ljava/lang/String; = "WhiteBalance"

.field public static final TAG_WHITE_POINT:Ljava/lang/String; = "WhitePoint"

.field public static final TAG_X_RESOLUTION:Ljava/lang/String; = "XResolution"

.field public static final TAG_Y_CB_CR_COEFFICIENTS:Ljava/lang/String; = "YCbCrCoefficients"

.field public static final TAG_Y_CB_CR_POSITIONING:Ljava/lang/String; = "YCbCrPositioning"

.field public static final TAG_Y_CB_CR_SUB_SAMPLING:Ljava/lang/String; = "YCbCrSubSampling"

.field public static final TAG_Y_RESOLUTION:Ljava/lang/String; = "YResolution"

.field public static final WHITEBALANCE_AUTO:I = 0x0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITEBALANCE_MANUAL:I = 0x1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final WHITE_BALANCE_AUTO:S = 0x0s

.field public static final WHITE_BALANCE_MANUAL:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CENTERED:S = 0x1s

.field public static final Y_CB_CR_POSITIONING_CO_SITED:S = 0x2s

.field private static final sExifPointerTagMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForReading:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static final sExifTagMapsForWriting:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifTag;",
            ">;"
        }
    .end annotation
.end field

.field private static sFormatter:Ljava/text/SimpleDateFormat;

.field private static final sGpsTimestampPattern:Ljava/util/regex/Pattern;

.field private static final sNonZeroTimePattern:Ljava/util/regex/Pattern;

.field private static final sTagSetForCompatibility:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

.field private final mAttributes:[Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Landroidx/exifinterface/media/ExifInterface$ExifAttribute;",
            ">;"
        }
    .end annotation
.end field

.field private mExifByteOrder:Ljava/nio/ByteOrder;

.field private mExifOffset:I

.field private final mFilename:Ljava/lang/String;

.field private mHasThumbnail:Z

.field private mIsSupportedFile:Z

.field private mMimeType:I

.field private mOrfMakerNoteOffset:I

.field private mOrfThumbnailLength:I

.field private mOrfThumbnailOffset:I

.field private mRw2JpgFromRawOffset:I

.field private mThumbnailBytes:[B

.field private mThumbnailCompression:I

.field private mThumbnailLength:I

.field private mThumbnailOffset:I


# direct methods
.method static constructor <clinit>()V
    .locals 29

    .line 2146
    const/4 v0, 0x4

    new-array v1, v0, [Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    .line 2147
    const/4 v3, 0x6

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v1, v2

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x8

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v5

    .line 2146
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    .line 2148
    new-array v1, v0, [Ljava/lang/Integer;

    .line 2149
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v1, v4

    const/4 v8, 0x7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v1, v7

    .line 2150
    const/4 v9, 0x5

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v1, v5

    .line 2148
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    .line 2789
    new-array v1, v5, [I

    fill-array-data v1, :array_0

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 2794
    new-array v1, v2, [I

    aput v0, v1, v4

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_1:[I

    .line 2799
    new-array v1, v2, [I

    aput v6, v1, v4

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 2830
    new-array v1, v5, [B

    fill-array-data v1, :array_1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    .line 2842
    new-array v1, v3, [B

    fill-array-data v1, :array_2

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    .line 2844
    const/16 v1, 0xa

    new-array v10, v1, [B

    fill-array-data v10, :array_3

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    .line 2889
    const-string v11, ""

    const-string v12, "BYTE"

    const-string v13, "STRING"

    const-string v14, "USHORT"

    const-string v15, "ULONG"

    const-string v16, "URATIONAL"

    const-string v17, "SBYTE"

    const-string v18, "UNDEFINED"

    const-string v19, "SSHORT"

    const-string v20, "SLONG"

    const-string v21, "SRATIONAL"

    const-string v22, "SINGLE"

    const-string v23, "DOUBLE"

    filled-new-array/range {v11 .. v23}, [Ljava/lang/String;

    move-result-object v10

    sput-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    .line 2894
    const/16 v10, 0xe

    new-array v11, v10, [I

    fill-array-data v11, :array_4

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    .line 2897
    new-array v11, v6, [B

    fill-array-data v11, :array_5

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    .line 3336
    const/16 v11, 0x29

    new-array v11, v11, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "NewSubfileType"

    const/4 v14, 0x0

    const/16 v15, 0xfe

    invoke-direct {v12, v13, v15, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v4

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "SubfileType"

    const/16 v15, 0xff

    invoke-direct {v12, v13, v15, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v2

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v17, "ImageWidth"

    const/16 v18, 0x100

    const/16 v19, 0x3

    const/16 v20, 0x4

    const/16 v21, 0x0

    move-object/from16 v16, v12

    invoke-direct/range {v16 .. v21}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v7

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v23, "ImageLength"

    const/16 v24, 0x101

    const/16 v25, 0x3

    const/16 v26, 0x4

    const/16 v27, 0x0

    move-object/from16 v22, v12

    invoke-direct/range {v22 .. v27}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v5

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "BitsPerSample"

    const/16 v15, 0x102

    invoke-direct {v12, v13, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v0

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "Compression"

    const/16 v15, 0x103

    invoke-direct {v12, v13, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v9

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "PhotometricInterpretation"

    const/16 v15, 0x106

    invoke-direct {v12, v13, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v3

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ImageDescription"

    const/16 v15, 0x10e

    invoke-direct {v12, v13, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v8

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "Make"

    const/16 v15, 0x10f

    invoke-direct {v12, v13, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v6

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "Model"

    const/16 v15, 0x110

    invoke-direct {v12, v13, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v13, 0x9

    aput-object v12, v11, v13

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    const/16 v18, 0x3

    const/16 v19, 0x4

    const/16 v20, 0x0

    move-object v15, v12

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v12, v11, v1

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "Orientation"

    const/16 v1, 0x112

    invoke-direct {v12, v15, v1, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v1, 0xb

    aput-object v12, v11, v1

    new-instance v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "SamplesPerPixel"

    const/16 v1, 0x115

    invoke-direct {v12, v15, v1, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v1, 0xc

    aput-object v12, v11, v1

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "RowsPerStrip"

    const/16 v17, 0x116

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0xd

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "StripByteCounts"

    const/16 v17, 0x117

    move-object v15, v1

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "XResolution"

    const/16 v15, 0x11a

    invoke-direct {v1, v12, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0xf

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "YResolution"

    const/16 v15, 0x11b

    invoke-direct {v1, v12, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0x10

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "PlanarConfiguration"

    const/16 v15, 0x11c

    invoke-direct {v1, v12, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0x11

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "ResolutionUnit"

    const/16 v15, 0x128

    invoke-direct {v1, v12, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0x12

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "TransferFunction"

    const/16 v15, 0x12d

    invoke-direct {v1, v12, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0x13

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Software"

    const/16 v15, 0x131

    invoke-direct {v1, v12, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0x14

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "DateTime"

    const/16 v15, 0x132

    invoke-direct {v1, v12, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0x15

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "Artist"

    const/16 v15, 0x13b

    invoke-direct {v1, v12, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0x16

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v12, "WhitePoint"

    const/16 v15, 0x13e

    invoke-direct {v1, v12, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v12, 0x17

    aput-object v1, v11, v12

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "PrimaryChromaticities"

    const/16 v10, 0x13f

    invoke-direct {v1, v15, v10, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x18

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SubIFDPointer"

    const/16 v15, 0x14a

    invoke-direct {v1, v10, v15, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x19

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "JPEGInterchangeFormat"

    const/16 v15, 0x201

    invoke-direct {v1, v10, v15, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x1a

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "JPEGInterchangeFormatLength"

    const/16 v15, 0x202

    invoke-direct {v1, v10, v15, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x1b

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "YCbCrCoefficients"

    const/16 v15, 0x211

    invoke-direct {v1, v10, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x1c

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "YCbCrSubSampling"

    const/16 v15, 0x212

    invoke-direct {v1, v10, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x1d

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "YCbCrPositioning"

    const/16 v15, 0x213

    invoke-direct {v1, v10, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x1e

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ReferenceBlackWhite"

    const/16 v15, 0x214

    invoke-direct {v1, v10, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x1f

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "Copyright"

    const v15, 0x8298

    invoke-direct {v1, v10, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x20

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ExifIFDPointer"

    const v15, 0x8769

    invoke-direct {v1, v10, v15, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x21

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "GPSInfoIFDPointer"

    const v15, 0x8825

    invoke-direct {v1, v10, v15, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x22

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SensorTopBorder"

    invoke-direct {v1, v10, v0, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x23

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SensorLeftBorder"

    invoke-direct {v1, v10, v9, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x24

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SensorBottomBorder"

    invoke-direct {v1, v10, v3, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x25

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SensorRightBorder"

    invoke-direct {v1, v10, v8, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x26

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ISO"

    invoke-direct {v1, v10, v12, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x27

    aput-object v1, v11, v10

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "JpgFromRaw"

    const/16 v15, 0x2e

    invoke-direct {v1, v10, v15, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v10, 0x28

    aput-object v1, v11, v10

    sput-object v11, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3385
    const/16 v1, 0x3b

    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ExposureTime"

    const v15, 0x829a

    invoke-direct {v10, v11, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v4

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FNumber"

    const v15, 0x829d

    invoke-direct {v10, v11, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v2

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ExposureProgram"

    const v15, 0x8822

    invoke-direct {v10, v11, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v7

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SpectralSensitivity"

    const v15, 0x8824

    invoke-direct {v10, v11, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v5

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "PhotographicSensitivity"

    const v15, 0x8827

    invoke-direct {v10, v11, v15, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v0

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "OECF"

    const v15, 0x8828

    invoke-direct {v10, v11, v15, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v9

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ExifVersion"

    const v15, 0x9000

    invoke-direct {v10, v11, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v3

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "DateTimeOriginal"

    const v15, 0x9003

    invoke-direct {v10, v11, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v8

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "DateTimeDigitized"

    const v15, 0x9004

    invoke-direct {v10, v11, v15, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v6

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ComponentsConfiguration"

    const v15, 0x9101

    invoke-direct {v10, v11, v15, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v13

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "CompressedBitsPerPixel"

    const v15, 0x9102

    invoke-direct {v10, v11, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xa

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v15, "ShutterSpeedValue"

    const v13, 0x9201

    invoke-direct {v10, v15, v13, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v13, 0xb

    aput-object v10, v1, v13

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ApertureValue"

    const v15, 0x9202

    invoke-direct {v10, v13, v15, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v13, 0xc

    aput-object v10, v1, v13

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "BrightnessValue"

    const v15, 0x9203

    invoke-direct {v10, v13, v15, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v13, 0xd

    aput-object v10, v1, v13

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v13, "ExposureBiasValue"

    const v15, 0x9204

    invoke-direct {v10, v13, v15, v11, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xe

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "MaxApertureValue"

    const v13, 0x9205

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xf

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubjectDistance"

    const v13, 0x9206

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x10

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "MeteringMode"

    const v13, 0x9207

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x11

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "LightSource"

    const v13, 0x9208

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x12

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Flash"

    const v13, 0x9209

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x13

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FocalLength"

    const v13, 0x920a

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x14

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubjectArea"

    const v13, 0x9214

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x15

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "MakerNote"

    const v13, 0x927c

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x16

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "UserComment"

    const v13, 0x9286

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubSecTime"

    const v13, 0x9290

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x18

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubSecTimeOriginal"

    const v13, 0x9291

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x19

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubSecTimeDigitized"

    const v13, 0x9292

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1a

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FlashpixVersion"

    const v13, 0xa000

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1b

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ColorSpace"

    const v13, 0xa001

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1c

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "PixelXDimension"

    const v17, 0xa002

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1d

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "PixelYDimension"

    const v17, 0xa003

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1e

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "RelatedSoundFile"

    const v13, 0xa004

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1f

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "InteroperabilityIFDPointer"

    const v13, 0xa005

    invoke-direct {v10, v11, v13, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x20

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FlashEnergy"

    const v13, 0xa20b

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x21

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SpatialFrequencyResponse"

    const v13, 0xa20c

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x22

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FocalPlaneXResolution"

    const v13, 0xa20e

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x23

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FocalPlaneYResolution"

    const v13, 0xa20f

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x24

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FocalPlaneResolutionUnit"

    const v13, 0xa210

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x25

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubjectLocation"

    const v13, 0xa214

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x26

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ExposureIndex"

    const v13, 0xa215

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x27

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SensingMethod"

    const v13, 0xa217

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x28

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FileSource"

    const v13, 0xa300

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x29

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SceneType"

    const v13, 0xa301

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x2a

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "CFAPattern"

    const v13, 0xa302

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x2b

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "CustomRendered"

    const v13, 0xa401

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x2c

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ExposureMode"

    const v13, 0xa402

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x2d

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "WhiteBalance"

    const v13, 0xa403

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x2e

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "DigitalZoomRatio"

    const v13, 0xa404

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x2f

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "FocalLengthIn35mmFilm"

    const v13, 0xa405

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x30

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SceneCaptureType"

    const v13, 0xa406

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x31

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GainControl"

    const v13, 0xa407

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x32

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Contrast"

    const v13, 0xa408

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x33

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Saturation"

    const v13, 0xa409

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x34

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Sharpness"

    const v13, 0xa40a

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x35

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "DeviceSettingDescription"

    const v13, 0xa40b

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x36

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubjectDistanceRange"

    const v13, 0xa40c

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x37

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ImageUniqueID"

    const v13, 0xa420

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x38

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "DNGVersion"

    const v13, 0xc612

    invoke-direct {v10, v11, v13, v2, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x39

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "DefaultCropSize"

    const v17, 0xc620

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x3a

    aput-object v10, v1, v11

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3448
    const/16 v1, 0x1f

    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSVersionID"

    invoke-direct {v10, v11, v4, v2, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v4

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSLatitudeRef"

    invoke-direct {v10, v11, v2, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v2

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSLatitude"

    invoke-direct {v10, v11, v7, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v7

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSLongitudeRef"

    invoke-direct {v10, v11, v5, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v5

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSLongitude"

    invoke-direct {v10, v11, v0, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v0

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSAltitudeRef"

    invoke-direct {v10, v11, v9, v2, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v9

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSAltitude"

    invoke-direct {v10, v11, v3, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v3

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSTimeStamp"

    invoke-direct {v10, v11, v8, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v8

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSSatellites"

    invoke-direct {v10, v11, v6, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v6

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSStatus"

    const/16 v13, 0x9

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v13

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSMeasureMode"

    const/16 v13, 0xa

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v13

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDOP"

    const/16 v13, 0xb

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v13

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSSpeedRef"

    const/16 v13, 0xc

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xc

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSSpeed"

    const/16 v13, 0xd

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xd

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSTrackRef"

    const/16 v13, 0xe

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v13

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSTrack"

    const/16 v13, 0xf

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xf

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSImgDirectionRef"

    const/16 v13, 0x10

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x10

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSImgDirection"

    const/16 v13, 0x11

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x11

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSMapDatum"

    const/16 v13, 0x12

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x12

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestLatitudeRef"

    const/16 v13, 0x13

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x13

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestLatitude"

    const/16 v13, 0x14

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x14

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestLongitudeRef"

    const/16 v13, 0x15

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x15

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestLongitude"

    const/16 v13, 0x16

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x16

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestBearingRef"

    invoke-direct {v10, v11, v12, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestBearing"

    const/16 v13, 0x18

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x18

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestDistanceRef"

    const/16 v13, 0x19

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x19

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDestDistance"

    const/16 v13, 0x1a

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1a

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSProcessingMethod"

    const/16 v13, 0x1b

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1b

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSAreaInformation"

    const/16 v13, 0x1c

    invoke-direct {v10, v11, v13, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1c

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDateStamp"

    const/16 v13, 0x1d

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1d

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSDifferential"

    const/16 v13, 0x1e

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1e

    aput-object v10, v1, v11

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3482
    new-array v1, v2, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "InteroperabilityIndex"

    invoke-direct {v10, v11, v2, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v4

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3486
    const/16 v1, 0x25

    new-array v1, v1, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "NewSubfileType"

    const/16 v13, 0xfe

    invoke-direct {v10, v11, v13, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v4

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubfileType"

    const/16 v13, 0xff

    invoke-direct {v10, v11, v13, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v2

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "ThumbnailImageWidth"

    const/16 v17, 0x100

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v7

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v22, "ThumbnailImageLength"

    const/16 v23, 0x101

    const/16 v24, 0x3

    const/16 v25, 0x4

    const/16 v26, 0x0

    move-object/from16 v21, v10

    invoke-direct/range {v21 .. v26}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v5

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "BitsPerSample"

    const/16 v13, 0x102

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v0

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Compression"

    const/16 v13, 0x103

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v9

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "PhotometricInterpretation"

    const/16 v13, 0x106

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v3

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ImageDescription"

    const/16 v13, 0x10e

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v8

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Make"

    const/16 v13, 0x10f

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v6

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Model"

    const/16 v13, 0x110

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x9

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "StripOffsets"

    const/16 v17, 0x111

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xa

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Orientation"

    const/16 v13, 0x112

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xb

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SamplesPerPixel"

    const/16 v13, 0x115

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xc

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "RowsPerStrip"

    const/16 v17, 0x116

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xd

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "StripByteCounts"

    const/16 v17, 0x117

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xe

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "XResolution"

    const/16 v13, 0x11a

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0xf

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "YResolution"

    const/16 v13, 0x11b

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x10

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "PlanarConfiguration"

    const/16 v13, 0x11c

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x11

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ResolutionUnit"

    const/16 v13, 0x128

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x12

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "TransferFunction"

    const/16 v13, 0x12d

    invoke-direct {v10, v11, v13, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x13

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Software"

    const/16 v13, 0x131

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x14

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "DateTime"

    const/16 v13, 0x132

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x15

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Artist"

    const/16 v13, 0x13b

    invoke-direct {v10, v11, v13, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x16

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "WhitePoint"

    const/16 v13, 0x13e

    invoke-direct {v10, v11, v13, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v12

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "PrimaryChromaticities"

    const/16 v12, 0x13f

    invoke-direct {v10, v11, v12, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x18

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "SubIFDPointer"

    const/16 v12, 0x14a

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x19

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "JPEGInterchangeFormat"

    const/16 v12, 0x201

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1a

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "JPEGInterchangeFormatLength"

    const/16 v12, 0x202

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1b

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrCoefficients"

    const/16 v12, 0x211

    invoke-direct {v10, v11, v12, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1c

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrSubSampling"

    const/16 v12, 0x212

    invoke-direct {v10, v11, v12, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1d

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "YCbCrPositioning"

    const/16 v12, 0x213

    invoke-direct {v10, v11, v12, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1e

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ReferenceBlackWhite"

    const/16 v12, 0x214

    invoke-direct {v10, v11, v12, v9, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x1f

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "Copyright"

    const v12, 0x8298

    invoke-direct {v10, v11, v12, v7, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x20

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ExifIFDPointer"

    const v12, 0x8769

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x21

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "GPSInfoIFDPointer"

    const v12, 0x8825

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x22

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "DNGVersion"

    const v12, 0xc612

    invoke-direct {v10, v11, v12, v2, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x23

    aput-object v10, v1, v11

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v16, "DefaultCropSize"

    const v17, 0xc620

    move-object v15, v10

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IIILandroidx/exifinterface/media/ExifInterface$1;)V

    const/16 v11, 0x24

    aput-object v10, v1, v11

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3529
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "StripOffsets"

    const/16 v11, 0x111

    invoke-direct {v1, v10, v11, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3533
    new-array v1, v5, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ThumbnailImage"

    const/16 v12, 0x100

    invoke-direct {v10, v11, v12, v8, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v4

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "CameraSettingsIFDPointer"

    const/16 v12, 0x2020

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v2

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ImageProcessingIFDPointer"

    const/16 v12, 0x2040

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v7

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3538
    new-array v1, v7, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "PreviewImageStart"

    const/16 v12, 0x101

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v4

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "PreviewImageLength"

    const/16 v12, 0x102

    invoke-direct {v10, v11, v12, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v2

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3542
    new-array v1, v2, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "AspectFrame"

    const/16 v12, 0x1113

    invoke-direct {v10, v11, v12, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v4

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3546
    new-array v1, v2, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v11, "ColorSpace"

    const/16 v12, 0x37

    invoke-direct {v10, v11, v12, v5, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v10, v1, v4

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3574
    const/16 v1, 0xa

    new-array v1, v1, [[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v4

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_EXIF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v2

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_GPS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v7

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_INTEROPERABILITY_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v5

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_THUMBNAIL_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v0

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IFD_TIFF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v9

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v3

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_CAMERA_SETTINGS_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v8

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->ORF_IMAGE_PROCESSING_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aput-object v10, v1, v6

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->PEF_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const/16 v11, 0x9

    aput-object v10, v1, v11

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3580
    new-array v1, v3, [Landroidx/exifinterface/media/ExifInterface$ExifTag;

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "SubIFDPointer"

    const/16 v11, 0x14a

    invoke-direct {v3, v10, v11, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v3, v1, v4

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ExifIFDPointer"

    const v11, 0x8769

    invoke-direct {v3, v10, v11, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v3, v1, v2

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "GPSInfoIFDPointer"

    const v11, 0x8825

    invoke-direct {v3, v10, v11, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v3, v1, v7

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "InteroperabilityIFDPointer"

    const v11, 0xa005

    invoke-direct {v3, v10, v11, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v3, v1, v5

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "CameraSettingsIFDPointer"

    const/16 v11, 0x2020

    invoke-direct {v3, v10, v11, v2, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v3, v1, v0

    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v10, "ImageProcessingIFDPointer"

    const/16 v11, 0x2040

    invoke-direct {v3, v10, v11, v2, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v3, v1, v9

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3590
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormat"

    const/16 v10, 0x201

    invoke-direct {v1, v3, v10, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3592
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    const-string v3, "JPEGInterchangeFormatLength"

    const/16 v10, 0x202

    invoke-direct {v1, v3, v10, v0, v14}, Landroidx/exifinterface/media/ExifInterface$ExifTag;-><init>(Ljava/lang/String;IILandroidx/exifinterface/media/ExifInterface$1;)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3597
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    .line 3601
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    new-array v1, v1, [Ljava/util/HashMap;

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    .line 3603
    new-instance v1, Ljava/util/HashSet;

    const-string v3, "FNumber"

    const-string v10, "DigitalZoomRatio"

    const-string v11, "ExposureTime"

    const-string v12, "SubjectDistance"

    const-string v13, "GPSTimeStamp"

    filled-new-array {v3, v10, v11, v12, v13}, [Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    .line 3608
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    .line 3615
    const-string v1, "US-ASCII"

    invoke-static {v1}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    .line 3617
    const-string v1, "Exif\u0000\u0000"

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-virtual {v1, v3}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v1

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    .line 3656
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v3, "yyyy:MM:dd HH:mm:ss"

    invoke-direct {v1, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    sput-object v1, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    .line 3657
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    const-string v3, "UTC"

    invoke-static {v3}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/text/SimpleDateFormat;->setTimeZone(Ljava/util/TimeZone;)V

    .line 3660
    move v1, v4

    .local v1, "ifdType":I
    :goto_0
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v3, v3

    if-ge v1, v3, :cond_1

    .line 3661
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    aput-object v10, v3, v1

    .line 3662
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    new-instance v10, Ljava/util/HashMap;

    invoke-direct {v10}, Ljava/util/HashMap;-><init>()V

    aput-object v10, v3, v1

    .line 3663
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v3, v3, v1

    array-length v10, v3

    move v11, v4

    :goto_1
    if-ge v11, v10, :cond_0

    aget-object v12, v3, v11

    .line 3664
    .local v12, "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v13, v13, v1

    iget v14, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3665
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v13, v13, v1

    iget-object v14, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v13, v14, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3663
    .end local v12    # "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 3660
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3670
    .end local v1    # "ifdType":I
    :cond_1
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v3, v3, v4

    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3671
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v3, v3, v2

    iget v3, v3, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3672
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v2, v2, v7

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3673
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v2, v2, v5

    iget v2, v2, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3674
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v0, v2, v0

    iget v0, v0, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v0, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3675
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v1, v1, v9

    iget v1, v1, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3698
    const-string v0, ".*[1-9].*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 3700
    const-string v0, "^([0-9][0-9]):([0-9][0-9]):([0-9][0-9])$"

    .line 3701
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroidx/exifinterface/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    .line 3700
    return-void

    :array_0
    .array-data 4
        0x8
        0x8
        0x8
    .end array-data

    :array_1
    .array-data 1
        -0x1t
        -0x28t
        -0x1t
    .end array-data

    :array_2
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x0t
    .end array-data

    nop

    :array_3
    .array-data 1
        0x4ft
        0x4ct
        0x59t
        0x4dt
        0x50t
        0x55t
        0x53t
        0x0t
        0x49t
        0x49t
    .end array-data

    nop

    :array_4
    .array-data 4
        0x0
        0x1
        0x1
        0x2
        0x4
        0x8
        0x1
        0x1
        0x2
        0x4
        0x8
        0x4
        0x8
        0x1
    .end array-data

    :array_5
    .array-data 1
        0x41t
        0x53t
        0x43t
        0x49t
        0x49t
        0x0t
        0x0t
        0x0t
    .end array-data
.end method

.method public constructor <init>(Ljava/io/InputStream;)V
    .locals 2
    .param p1, "inputStream"    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3727
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3681
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3683
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3728
    if-eqz p1, :cond_1

    .line 3731
    const/4 v0, 0x0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3732
    instance-of v1, p1, Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v1, :cond_0

    .line 3733
    move-object v0, p1

    check-cast v0, Landroid/content/res/AssetManager$AssetInputStream;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    goto :goto_0

    .line 3735
    :cond_0
    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3737
    :goto_0
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V

    .line 3738
    return-void

    .line 3729
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "inputStream cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "filename"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 3706
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3681
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v0, v0

    new-array v0, v0, [Ljava/util/HashMap;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    .line 3683
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3707
    if-eqz p1, :cond_0

    .line 3710
    const/4 v0, 0x0

    .line 3711
    .local v0, "in":Ljava/io/FileInputStream;
    const/4 v1, 0x0

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    .line 3712
    iput-object p1, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    .line 3714
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    .line 3715
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->loadAttributes(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3717
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 3718
    nop

    .line 3719
    return-void

    .line 3717
    :catchall_0
    move-exception v1

    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    throw v1

    .line 3708
    .end local v0    # "in":Ljava/io/FileInputStream;
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "filename cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/nio/charset/Charset;
    .locals 1

    .line 70
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method static synthetic access$100()[B
    .locals 1

    .line 70
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->EXIF_ASCII_PREFIX:[B

    return-object v0
.end method

.method private addDefaultValuesForCompatibility()V
    .locals 7

    .line 5246
    const-string v0, "DateTimeOriginal"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 5247
    .local v0, "valueOfDateTimeOriginal":Ljava/lang/String;
    const/4 v1, 0x0

    if-eqz v0, :cond_0

    const-string v2, "DateTime"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 5248
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v3, "DateTime"

    .line 5249
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 5248
    invoke-virtual {v2, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5253
    :cond_0
    const-string v2, "ImageWidth"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_1

    .line 5254
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v5, "ImageWidth"

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5255
    invoke-static {v3, v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 5254
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5257
    :cond_1
    const-string v2, "ImageLength"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2

    .line 5258
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    const-string v5, "ImageLength"

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5259
    invoke-static {v3, v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 5258
    invoke-virtual {v2, v5, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5261
    :cond_2
    const-string v2, "Orientation"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 5262
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "Orientation"

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5263
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 5262
    invoke-virtual {v1, v2, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5265
    :cond_3
    const-string v1, "LightSource"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-nez v1, :cond_4

    .line 5266
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v2, "LightSource"

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5267
    invoke-static {v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5266
    invoke-virtual {v1, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5269
    :cond_4
    return-void
.end method

.method private static closeQuietly(Ljava/io/Closeable;)V
    .locals 1
    .param p0, "closeable"    # Ljava/io/Closeable;

    .line 6441
    if-eqz p0, :cond_0

    .line 6443
    :try_start_0
    invoke-interface {p0}, Ljava/io/Closeable;->close()V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 6447
    goto :goto_0

    .line 6446
    :catch_0
    move-exception v0

    goto :goto_0

    .line 6444
    :catch_1
    move-exception v0

    .line 6445
    .local v0, "rethrown":Ljava/lang/RuntimeException;
    throw v0

    .line 6449
    .end local v0    # "rethrown":Ljava/lang/RuntimeException;
    :cond_0
    :goto_0
    return-void
.end method

.method private convertDecimalDegree(D)Ljava/lang/String;
    .locals 10
    .param p1, "decimalDegree"    # D

    .line 4677
    double-to-long v0, p1

    .line 4678
    .local v0, "degrees":J
    long-to-double v2, v0

    sub-double v2, p1, v2

    const-wide/high16 v4, 0x404e000000000000L    # 60.0

    mul-double/2addr v2, v4

    double-to-long v2, v2

    .line 4679
    .local v2, "minutes":J
    long-to-double v6, v0

    sub-double v6, p1, v6

    long-to-double v8, v2

    div-double/2addr v8, v4

    sub-double/2addr v6, v8

    const-wide v4, 0x40ac200000000000L    # 3600.0

    mul-double/2addr v6, v4

    const-wide v4, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v6, v4

    invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J

    move-result-wide v4

    .line 4680
    .local v4, "seconds":J
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v7, "/10000000"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    return-object v6
.end method

.method private static convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D
    .locals 13
    .param p0, "rationalString"    # Ljava/lang/String;
    .param p1, "ref"    # Ljava/lang/String;

    .line 4646
    :try_start_0
    const-string v0, ","

    const/4 v1, -0x1

    invoke-virtual {p0, v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 4649
    .local v0, "parts":[Ljava/lang/String;
    const/4 v2, 0x0

    aget-object v3, v0, v2

    const-string v4, "/"

    invoke-virtual {v3, v4, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v3

    .line 4650
    .local v3, "pair":[Ljava/lang/String;
    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v4

    const/4 v6, 0x1

    aget-object v7, v3, v6

    .line 4651
    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    div-double/2addr v4, v7

    .line 4653
    .local v4, "degrees":D
    aget-object v7, v0, v6

    const-string v8, "/"

    invoke-virtual {v7, v8, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v7

    move-object v3, v7

    .line 4654
    aget-object v7, v3, v2

    invoke-virtual {v7}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    aget-object v9, v3, v6

    .line 4655
    invoke-virtual {v9}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v7, v9

    .line 4657
    .local v7, "minutes":D
    const/4 v9, 0x2

    aget-object v9, v0, v9

    const-string v10, "/"

    invoke-virtual {v9, v10, v1}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 4658
    .end local v3    # "pair":[Ljava/lang/String;
    .local v1, "pair":[Ljava/lang/String;
    aget-object v2, v1, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v2

    aget-object v6, v1, v6

    .line 4659
    invoke-virtual {v6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v9

    div-double/2addr v2, v9

    .line 4661
    .local v2, "seconds":D
    const-wide/high16 v9, 0x404e000000000000L    # 60.0

    div-double v9, v7, v9

    add-double/2addr v9, v4

    const-wide v11, 0x40ac200000000000L    # 3600.0

    div-double v11, v2, v11

    add-double/2addr v9, v11

    .line 4662
    .local v9, "result":D
    const-string v6, "S"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    const-string v6, "W"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 4664
    :cond_0
    const-string v6, "N"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const-string v6, "E"

    invoke-virtual {p1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    .line 4668
    :cond_1
    new-instance v6, Ljava/lang/IllegalArgumentException;

    invoke-direct {v6}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v6
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4665
    :cond_2
    :goto_0
    return-wide v9

    .line 4663
    :cond_3
    :goto_1
    neg-double v11, v9

    return-wide v11

    .line 4670
    .end local v0    # "parts":[Ljava/lang/String;
    .end local v1    # "pair":[Ljava/lang/String;
    .end local v2    # "seconds":D
    .end local v4    # "degrees":D
    .end local v7    # "minutes":D
    .end local v9    # "result":D
    :catch_0
    move-exception v0

    .line 4672
    .local v0, "e":Ljava/lang/RuntimeException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method private static convertToLongArray(Ljava/lang/Object;)[J
    .locals 5
    .param p0, "inputObj"    # Ljava/lang/Object;

    .line 6471
    instance-of v0, p0, [I

    if-eqz v0, :cond_1

    .line 6472
    move-object v0, p0

    check-cast v0, [I

    .line 6473
    .local v0, "input":[I
    array-length v1, v0

    new-array v1, v1, [J

    .line 6474
    .local v1, "result":[J
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_0

    .line 6475
    aget v3, v0, v2

    int-to-long v3, v3

    aput-wide v3, v1, v2

    .line 6474
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6477
    .end local v2    # "i":I
    :cond_0
    return-object v1

    .line 6478
    .end local v0    # "input":[I
    .end local v1    # "result":[J
    :cond_1
    instance-of v0, p0, [J

    if-eqz v0, :cond_2

    .line 6479
    move-object v0, p0

    check-cast v0, [J

    return-object v0

    .line 6481
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private static copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I
    .locals 5
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6456
    const/4 v0, 0x0

    .line 6457
    .local v0, "total":I
    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 6459
    .local v1, "buffer":[B
    :goto_0
    invoke-virtual {p0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    move v3, v2

    .local v3, "c":I
    const/4 v4, -0x1

    if-eq v2, v4, :cond_0

    .line 6460
    add-int/2addr v0, v3

    .line 6461
    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v3}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 6463
    :cond_0
    return v0
.end method

.method private getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3748
    const-string v0, "ISOSpeedRatings"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3753
    const-string p1, "PhotographicSensitivity"

    .line 3757
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 3758
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 3759
    .local v1, "value":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    .line 3760
    return-object v1

    .line 3757
    .end local v1    # "value":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3763
    .end local v0    # "i":I
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method

.method private getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V
    .locals 10
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "jpegOffset"    # I
    .param p3, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4787
    sget-object v0, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4790
    int-to-long v0, p2

    invoke-virtual {p1, v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4791
    move v0, p2

    .line 4794
    .local v0, "bytesRead":I
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v1

    move v2, v1

    .local v2, "marker":B
    const/4 v3, -0x1

    if-ne v1, v3, :cond_11

    .line 4797
    const/4 v1, 0x1

    add-int/2addr v0, v1

    .line 4798
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v4

    const/16 v5, -0x28

    if-ne v4, v5, :cond_10

    .line 4801
    add-int/2addr v0, v1

    .line 4803
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    .line 4804
    if-ne v2, v3, :cond_f

    .line 4807
    add-int/lit8 v0, v0, 0x1

    .line 4808
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readByte()B

    move-result v2

    .line 4812
    add-int/2addr v0, v1

    .line 4816
    const/16 v4, -0x27

    if-eq v2, v4, :cond_e

    const/16 v4, -0x26

    if-ne v2, v4, :cond_0

    .line 4817
    goto/16 :goto_2

    .line 4819
    :cond_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    add-int/lit8 v4, v4, -0x2

    .line 4820
    .local v4, "length":I
    add-int/lit8 v0, v0, 0x2

    .line 4825
    if-ltz v4, :cond_d

    .line 4828
    const/16 v5, -0x1f

    if-eq v2, v5, :cond_4

    const/4 v5, -0x2

    if-eq v2, v5, :cond_2

    packed-switch v2, :pswitch_data_0

    packed-switch v2, :pswitch_data_1

    packed-switch v2, :pswitch_data_2

    packed-switch v2, :pswitch_data_3

    goto/16 :goto_1

    .line 4893
    :pswitch_0
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    if-ne v5, v1, :cond_1

    .line 4896
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string v6, "ImageLength"

    .line 4897
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4896
    invoke-static {v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4898
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p3

    const-string v6, "ImageWidth"

    .line 4899
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    int-to-long v7, v7

    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4898
    invoke-static {v7, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4900
    add-int/lit8 v4, v4, -0x5

    .line 4901
    goto :goto_1

    .line 4894
    :cond_1
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid SOFx"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4868
    :cond_2
    new-array v5, v4, [B

    .line 4869
    .local v5, "bytes":[B
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v6

    if-ne v6, v4, :cond_3

    .line 4872
    const/4 v4, 0x0

    .line 4873
    const-string v6, "UserComment"

    invoke-virtual {p0, v6}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_7

    .line 4874
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v1

    const-string v7, "UserComment"

    new-instance v8, Ljava/lang/String;

    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->ASCII:Ljava/nio/charset/Charset;

    invoke-direct {v8, v5, v9}, Ljava/lang/String;-><init>([BLjava/nio/charset/Charset;)V

    invoke-static {v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v8

    invoke-virtual {v6, v7, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 4870
    :cond_3
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4833
    .end local v5    # "bytes":[B
    :cond_4
    const/4 v5, 0x6

    if-ge v4, v5, :cond_5

    .line 4835
    goto :goto_1

    .line 4837
    :cond_5
    new-array v6, v5, [B

    .line 4838
    .local v6, "identifier":[B
    invoke-virtual {p1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v7

    if-ne v7, v5, :cond_c

    .line 4841
    add-int/lit8 v0, v0, 0x6

    .line 4842
    add-int/lit8 v4, v4, -0x6

    .line 4843
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v6, v5}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v5

    if-nez v5, :cond_6

    .line 4845
    goto :goto_1

    .line 4847
    :cond_6
    if-lez v4, :cond_b

    .line 4854
    iput v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifOffset:I

    .line 4856
    new-array v5, v4, [B

    .line 4857
    .restart local v5    # "bytes":[B
    invoke-virtual {p1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    move-result v7

    if-ne v7, v4, :cond_a

    .line 4860
    add-int/2addr v0, v4

    .line 4861
    const/4 v4, 0x0

    .line 4863
    invoke-direct {p0, v5, p3}, Landroidx/exifinterface/media/ExifInterface;->readExifSegment([BI)V

    .line 4864
    nop

    .line 4908
    .end local v5    # "bytes":[B
    .end local v6    # "identifier":[B
    :cond_7
    :goto_1
    if-ltz v4, :cond_9

    .line 4911
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v5

    if-ne v5, v4, :cond_8

    .line 4914
    add-int/2addr v0, v4

    .line 4915
    .end local v4    # "length":I
    goto/16 :goto_0

    .line 4912
    .restart local v4    # "length":I
    :cond_8
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid JPEG segment"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4909
    :cond_9
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4858
    .restart local v5    # "bytes":[B
    .restart local v6    # "identifier":[B
    :cond_a
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4848
    .end local v5    # "bytes":[B
    :cond_b
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4839
    :cond_c
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4826
    .end local v6    # "identifier":[B
    :cond_d
    new-instance v1, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4917
    .end local v4    # "length":I
    :cond_e
    :goto_2
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4918
    return-void

    .line 4805
    :cond_f
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid marker:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v4, v2, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4799
    :cond_10
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid marker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v4, v2, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 4795
    :cond_11
    new-instance v1, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid marker: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    and-int/lit16 v4, v2, 0xff

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    nop

    :pswitch_data_0
    .packed-switch -0x40
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch -0x3b
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_2
    .packed-switch -0x37
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_3
    .packed-switch -0x33
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private getMimeType(Ljava/io/BufferedInputStream;)I
    .locals 2
    .param p1, "in"    # Ljava/io/BufferedInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4685
    const/16 v0, 0x1388

    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->mark(I)V

    .line 4686
    new-array v0, v0, [B

    .line 4687
    .local v0, "signatureCheckBytes":[B
    invoke-virtual {p1, v0}, Ljava/io/BufferedInputStream;->read([B)I

    .line 4688
    invoke-virtual {p1}, Ljava/io/BufferedInputStream;->reset()V

    .line 4689
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->isJpegFormat([B)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4690
    const/4 v1, 0x4

    return v1

    .line 4691
    :cond_0
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRafFormat([B)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4692
    const/16 v1, 0x9

    return v1

    .line 4693
    :cond_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isOrfFormat([B)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4694
    const/4 v1, 0x7

    return v1

    .line 4695
    :cond_2
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isRw2Format([B)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4696
    const/16 v1, 0xa

    return v1

    .line 4699
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 16
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 5032
    invoke-direct/range {p0 .. p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5037
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    const-string v3, "MakerNote"

    .line 5038
    invoke-virtual {v1, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5039
    .local v1, "makerNoteAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_6

    .line 5041
    new-instance v3, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v4, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5043
    .local v3, "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5047
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    array-length v4, v4

    new-array v4, v4, [B

    .line 5048
    .local v4, "makerNoteHeader1Bytes":[B
    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5049
    const-wide/16 v5, 0x0

    invoke-virtual {v3, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5050
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    array-length v5, v5

    new-array v5, v5, [B

    .line 5051
    .local v5, "makerNoteHeader2Bytes":[B
    invoke-virtual {v3, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5053
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_1:[B

    invoke-static {v4, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 5054
    const-wide/16 v6, 0x8

    invoke-virtual {v3, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_0

    .line 5055
    :cond_0
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->ORF_MAKER_NOTE_HEADER_2:[B

    invoke-static {v5, v6}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 5056
    const-wide/16 v6, 0xc

    invoke-virtual {v3, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5060
    :cond_1
    :goto_0
    const/4 v6, 0x6

    invoke-direct {v0, v3, v6}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5063
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x7

    aget-object v6, v6, v7

    const-string v8, "PreviewImageStart"

    .line 5064
    invoke-virtual {v6, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5065
    .local v6, "imageStartAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v7, v8, v7

    const-string v8, "PreviewImageLength"

    .line 5066
    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5068
    .local v7, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v6, :cond_2

    if-eqz v7, :cond_2

    .line 5069
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x5

    aget-object v8, v8, v9

    const-string v10, "JPEGInterchangeFormat"

    invoke-virtual {v8, v10, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5071
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5078
    :cond_2
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/16 v9, 0x8

    aget-object v8, v8, v9

    const-string v9, "AspectFrame"

    .line 5079
    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5080
    .local v8, "aspectFrameAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v8, :cond_6

    .line 5081
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->access$500(Landroidx/exifinterface/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 5082
    .local v9, "aspectFrameValues":[I
    if-eqz v9, :cond_5

    array-length v10, v9

    const/4 v11, 0x4

    if-eq v10, v11, :cond_3

    goto :goto_1

    .line 5087
    :cond_3
    const/4 v10, 0x2

    aget v11, v9, v10

    const/4 v12, 0x0

    aget v13, v9, v12

    if-le v11, v13, :cond_6

    const/4 v11, 0x3

    aget v13, v9, v11

    aget v14, v9, v2

    if-le v13, v14, :cond_6

    .line 5089
    aget v10, v9, v10

    aget v13, v9, v12

    sub-int/2addr v10, v13

    add-int/2addr v10, v2

    .line 5090
    .local v10, "primaryImageWidth":I
    aget v11, v9, v11

    aget v13, v9, v2

    sub-int/2addr v11, v13

    add-int/2addr v11, v2

    .line 5092
    .local v11, "primaryImageLength":I
    if-ge v10, v11, :cond_4

    .line 5093
    add-int/2addr v10, v11

    .line 5094
    sub-int v11, v10, v11

    .line 5095
    sub-int/2addr v10, v11

    .line 5097
    :cond_4
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5098
    invoke-static {v10, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v2

    .line 5099
    .local v2, "primaryImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5100
    invoke-static {v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5102
    .local v13, "primaryImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, v12

    const-string v15, "ImageWidth"

    invoke-virtual {v14, v15, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5103
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v14, v12

    const-string v14, "ImageLength"

    invoke-virtual {v12, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v2    # "primaryImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v3    # "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v4    # "makerNoteHeader1Bytes":[B
    .end local v5    # "makerNoteHeader2Bytes":[B
    .end local v6    # "imageStartAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v7    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v8    # "aspectFrameAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v9    # "aspectFrameValues":[I
    .end local v10    # "primaryImageWidth":I
    .end local v11    # "primaryImageLength":I
    .end local v13    # "primaryImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    goto :goto_2

    .line 5083
    .restart local v3    # "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .restart local v4    # "makerNoteHeader1Bytes":[B
    .restart local v5    # "makerNoteHeader2Bytes":[B
    .restart local v6    # "imageStartAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v7    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v8    # "aspectFrameAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v9    # "aspectFrameValues":[I
    :cond_5
    :goto_1
    const-string v2, "ExifInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Invalid aspect frame values. frame="

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5084
    invoke-static {v9}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 5083
    invoke-static {v2, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5085
    return-void

    .line 5107
    .end local v3    # "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v4    # "makerNoteHeader1Bytes":[B
    .end local v5    # "makerNoteHeader2Bytes":[B
    .end local v6    # "imageStartAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v7    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v8    # "aspectFrameAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v9    # "aspectFrameValues":[I
    :cond_6
    :goto_2
    return-void
.end method

.method private getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 17
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 4973
    move-object/from16 v1, p1

    const/16 v2, 0x54

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4974
    const/4 v2, 0x4

    new-array v3, v2, [B

    .line 4975
    .local v3, "jpegOffsetBytes":[B
    new-array v4, v2, [B

    .line 4976
    .local v4, "cfaHeaderOffsetBytes":[B
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4978
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4979
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 4980
    invoke-static {v3}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v2

    .line 4981
    .local v2, "rafJpegOffset":I
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->getInt()I

    move-result v5

    .line 4984
    .local v5, "rafCfaHeaderOffset":I
    const/4 v6, 0x5

    invoke-direct {v0, v1, v2, v6}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 4987
    int-to-long v6, v5

    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4990
    sget-object v6, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4991
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v6

    .line 4998
    .local v6, "numberOfDirectoryEntry":I
    const/4 v7, 0x0

    move v8, v7

    .local v8, "i":I
    :goto_0
    if-ge v8, v6, :cond_1

    .line 4999
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v9

    .line 5000
    .local v9, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v10

    .line 5001
    .local v10, "numberOfBytes":I
    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->TAG_RAF_IMAGE_SIZE:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget v11, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    if-ne v9, v11, :cond_0

    .line 5002
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v11

    .line 5003
    .local v11, "imageLength":I
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v12

    .line 5004
    .local v12, "imageWidth":I
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5005
    invoke-static {v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5006
    .local v13, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5007
    invoke-static {v12, v14}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v14

    .line 5008
    .local v14, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v15, v15, v7

    const-string v7, "ImageLength"

    invoke-virtual {v15, v7, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5009
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v15, 0x0

    aget-object v7, v7, v15

    const-string v15, "ImageWidth"

    invoke-virtual {v7, v15, v14}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5013
    return-void

    .line 5015
    .end local v11    # "imageLength":I
    .end local v12    # "imageWidth":I
    .end local v13    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v14    # "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_0
    move v15, v7

    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    .line 4998
    .end local v9    # "tagNumber":I
    .end local v10    # "numberOfBytes":I
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 5017
    .end local v8    # "i":I
    :cond_1
    return-void
.end method

.method private getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4922
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4925
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4928
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4929
    const/4 v0, 0x5

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4930
    const/4 v0, 0x4

    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4933
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->validateImages(Ljava/io/InputStream;)V

    .line 4935
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_0

    .line 4938
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x1

    aget-object v0, v0, v1

    const-string v2, "MakerNote"

    .line 4939
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4940
    .local v0, "makerNoteAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 4942
    new-instance v2, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-direct {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4944
    .local v2, "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4947
    const-wide/16 v3, 0x6

    invoke-virtual {v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 4950
    const/16 v3, 0x9

    invoke-direct {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 4953
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ColorSpace"

    .line 4954
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4955
    .local v3, "colorSpaceAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_0

    .line 4956
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v4, v1

    const-string v4, "ColorSpace"

    invoke-virtual {v1, v4, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4960
    .end local v0    # "makerNoteAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v2    # "makerNoteDataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .end local v3    # "colorSpaceAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_0
    return-void
.end method

.method private getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 5
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5114
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 5117
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x0

    aget-object v0, v0, v1

    const-string v2, "JpgFromRaw"

    .line 5118
    invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5119
    .local v0, "jpgFromRawAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    .line 5120
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mRw2JpgFromRawOffset:I

    const/4 v3, 0x5

    invoke-direct {p0, p1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 5124
    :cond_0
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v2, v1

    const-string v2, "ISO"

    .line 5125
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5126
    .local v1, "rw2IsoAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    const-string v4, "PhotographicSensitivity"

    .line 5127
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5128
    .local v2, "exifIsoAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    if-nez v2, :cond_1

    .line 5130
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "PhotographicSensitivity"

    invoke-virtual {v3, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5132
    :cond_1
    return-void
.end method

.method private static guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;
    .locals 12
    .param p0, "entryValue"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Landroid/util/Pair<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 6019
    const-string v0, ","

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, 0x2

    const/4 v4, -0x1

    if-eqz v0, :cond_9

    .line 6020
    const-string v0, ","

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 6021
    .local v0, "entryValues":[Ljava/lang/String;
    aget-object v1, v0, v1

    invoke-static {v1}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v1

    .line 6022
    .local v1, "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget-object v5, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    if-ne v5, v3, :cond_0

    .line 6023
    return-object v1

    .line 6025
    :cond_0
    nop

    .local v2, "i":I
    :goto_0
    array-length v5, v0

    if-ge v2, v5, :cond_8

    .line 6026
    aget-object v5, v0, v2

    invoke-static {v5}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v5

    .line 6027
    .local v5, "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v6, -0x1

    .local v6, "first":I
    const/4 v7, -0x1

    .line 6028
    .local v7, "second":I
    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_1

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 6029
    invoke-virtual {v8, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 6030
    :cond_1
    iget-object v8, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 6032
    :cond_2
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v8

    if-eq v8, v4, :cond_4

    iget-object v8, v5, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    invoke-virtual {v8, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-nez v8, :cond_3

    iget-object v8, v5, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    iget-object v9, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 6033
    invoke-virtual {v8, v9}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 6034
    :cond_3
    iget-object v8, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Integer;

    invoke-virtual {v8}, Ljava/lang/Integer;->intValue()I

    move-result v7

    .line 6036
    :cond_4
    if-ne v6, v4, :cond_5

    if-ne v7, v4, :cond_5

    .line 6037
    new-instance v8, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v8, v3, v4}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v8

    .line 6039
    :cond_5
    if-ne v6, v4, :cond_6

    .line 6040
    new-instance v8, Landroid/util/Pair;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v8

    .line 6041
    goto :goto_1

    .line 6043
    :cond_6
    if-ne v7, v4, :cond_7

    .line 6044
    new-instance v8, Landroid/util/Pair;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-direct {v8, v9, v10}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    move-object v1, v8

    .line 6045
    nop

    .line 6025
    .end local v5    # "guessDataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v6    # "first":I
    .end local v7    # "second":I
    :cond_7
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_0

    .line 6048
    .end local v2    # "i":I
    :cond_8
    return-object v1

    .line 6051
    .end local v0    # "entryValues":[Ljava/lang/String;
    .end local v1    # "dataFormat":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_9
    const-string v0, "/"

    invoke-virtual {p0, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    const-wide/16 v5, 0x0

    if-eqz v0, :cond_f

    .line 6052
    const-string v0, "/"

    invoke-virtual {p0, v0, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 6053
    .local v0, "rationalNumber":[Ljava/lang/String;
    array-length v7, v0

    if-ne v7, v3, :cond_e

    .line 6055
    :try_start_0
    aget-object v1, v0, v1

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v7

    double-to-long v7, v7

    .line 6056
    .local v7, "numerator":J
    aget-object v1, v0, v2

    invoke-static {v1}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v1

    double-to-long v1, v1

    .line 6057
    .local v1, "denominator":J
    cmp-long v9, v7, v5

    const/16 v10, 0xa

    if-ltz v9, :cond_d

    cmp-long v5, v1, v5

    if-gez v5, :cond_a

    goto :goto_3

    .line 6060
    :cond_a
    const-wide/32 v5, 0x7fffffff

    cmp-long v9, v7, v5

    const/4 v11, 0x5

    if-gtz v9, :cond_c

    cmp-long v5, v1, v5

    if-lez v5, :cond_b

    goto :goto_2

    .line 6063
    :cond_b
    new-instance v5, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 6061
    :cond_c
    :goto_2
    new-instance v5, Landroid/util/Pair;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v5

    .line 6058
    :cond_d
    :goto_3
    new-instance v5, Landroid/util/Pair;

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-direct {v5, v6, v9}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v5

    .line 6064
    .end local v1    # "denominator":J
    .end local v7    # "numerator":J
    :catch_0
    move-exception v1

    .line 6068
    :cond_e
    new-instance v1, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 6071
    .end local v0    # "rationalNumber":[Ljava/lang/String;
    :cond_f
    :try_start_1
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 6072
    .local v0, "longValue":Ljava/lang/Long;
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    cmp-long v1, v1, v5

    const/4 v2, 0x4

    if-ltz v1, :cond_10

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const-wide/32 v9, 0xffff

    cmp-long v1, v7, v9

    if-gtz v1, :cond_10

    .line 6073
    new-instance v1, Landroid/util/Pair;

    const/4 v5, 0x3

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v1, v5, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 6075
    :cond_10
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    cmp-long v1, v7, v5

    if-gez v1, :cond_11

    .line 6076
    new-instance v1, Landroid/util/Pair;

    const/16 v2, 0x9

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v1

    .line 6078
    :cond_11
    new-instance v1, Landroid/util/Pair;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v1, v2, v5}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    return-object v1

    .line 6079
    .end local v0    # "longValue":Ljava/lang/Long;
    :catch_1
    move-exception v0

    .line 6083
    :try_start_2
    invoke-static {p0}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    .line 6084
    new-instance v0, Landroid/util/Pair;

    const/16 v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    return-object v0

    .line 6085
    :catch_2
    move-exception v0

    .line 6088
    new-instance v0, Landroid/util/Pair;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method private handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 7
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5575
    const-string v0, "JPEGInterchangeFormat"

    .line 5576
    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5577
    .local v0, "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const-string v1, "JPEGInterchangeFormatLength"

    .line 5578
    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5579
    .local v1, "jpegInterchangeFormatLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    if-eqz v1, :cond_3

    .line 5581
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 5582
    .local v2, "thumbnailOffset":I
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 5585
    .local v3, "thumbnailLength":I
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->available()I

    move-result v4

    sub-int/2addr v4, v2

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 5586
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x4

    if-eq v4, v5, :cond_1

    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v5, 0x9

    if-eq v4, v5, :cond_1

    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v5, 0xa

    if-ne v4, v5, :cond_0

    goto :goto_0

    .line 5589
    :cond_0
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v5, 0x7

    if-ne v4, v5, :cond_2

    .line 5591
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    add-int/2addr v2, v4

    goto :goto_1

    .line 5588
    :cond_1
    :goto_0
    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifOffset:I

    add-int/2addr v2, v4

    .line 5597
    :cond_2
    :goto_1
    if-lez v2, :cond_3

    if-lez v3, :cond_3

    .line 5598
    const/4 v4, 0x1

    iput-boolean v4, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 5599
    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 5600
    iput v3, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .line 5601
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-nez v4, :cond_3

    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-nez v4, :cond_3

    .line 5603
    new-array v4, v3, [B

    .line 5604
    .local v4, "thumbnailBytes":[B
    int-to-long v5, v2

    invoke-virtual {p1, v5, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5605
    invoke-virtual {p1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5606
    iput-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 5610
    .end local v2    # "thumbnailOffset":I
    .end local v3    # "thumbnailLength":I
    .end local v4    # "thumbnailBytes":[B
    :cond_3
    return-void
.end method

.method private handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V
    .locals 19
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5615
    move-object/from16 v2, p2

    const-string v3, "StripOffsets"

    .line 5616
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5617
    .local v3, "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const-string v4, "StripByteCounts"

    .line 5618
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5620
    .local v4, "stripByteCountsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_5

    if-eqz v4, :cond_5

    .line 5621
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5622
    invoke-static {v3, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->access$500(Landroidx/exifinterface/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Landroidx/exifinterface/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v5

    .line 5623
    .local v5, "stripOffsets":[J
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5624
    invoke-static {v4, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->access$500(Landroidx/exifinterface/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    invoke-static {v6}, Landroidx/exifinterface/media/ExifInterface;->convertToLongArray(Ljava/lang/Object;)[J

    move-result-object v6

    .line 5626
    .local v6, "stripByteCounts":[J
    if-nez v5, :cond_0

    .line 5627
    const-string v7, "ExifInterface"

    const-string v8, "stripOffsets should not be null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5628
    return-void

    .line 5630
    :cond_0
    if-nez v6, :cond_1

    .line 5631
    const-string v7, "ExifInterface"

    const-string v8, "stripByteCounts should not be null."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5632
    return-void

    .line 5635
    :cond_1
    const-wide/16 v7, 0x0

    .line 5636
    .local v7, "totalStripByteCount":J
    array-length v9, v6

    move-wide v11, v7

    const/4 v7, 0x0

    .end local v7    # "totalStripByteCount":J
    .local v11, "totalStripByteCount":J
    :goto_0
    if-ge v7, v9, :cond_2

    aget-wide v13, v6, v7

    .line 5637
    .local v13, "byteCount":J
    add-long/2addr v11, v13

    .line 5636
    .end local v13    # "byteCount":J
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5641
    :cond_2
    long-to-int v7, v11

    new-array v7, v7, [B

    .line 5643
    .local v7, "totalStripBytes":[B
    const/4 v8, 0x0

    .line 5644
    .local v8, "bytesRead":I
    const/4 v9, 0x0

    .line 5645
    .local v9, "bytesAdded":I
    move v13, v9

    move v9, v8

    const/4 v8, 0x0

    .local v8, "i":I
    .local v9, "bytesRead":I
    .local v13, "bytesAdded":I
    :goto_1
    array-length v14, v5

    if-ge v8, v14, :cond_4

    .line 5646
    aget-wide v14, v5, v8

    long-to-int v14, v14

    .line 5647
    .local v14, "stripOffset":I
    move-wide/from16 v16, v11

    aget-wide v10, v6, v8

    .end local v11    # "totalStripByteCount":J
    .local v16, "totalStripByteCount":J
    long-to-int v10, v10

    .line 5650
    .local v10, "stripByteCount":I
    sub-int v11, v14, v9

    .line 5651
    .local v11, "skipBytes":I
    if-gez v11, :cond_3

    .line 5652
    const-string v12, "ExifInterface"

    const-string v15, "Invalid strip offset value"

    invoke-static {v12, v15}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5654
    :cond_3
    move-object/from16 v18, v3

    int-to-long v2, v11

    .end local v3    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v18, "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    invoke-virtual {v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5655
    add-int/2addr v9, v11

    .line 5658
    new-array v2, v10, [B

    .line 5659
    .local v2, "stripBytes":[B
    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->read([B)I

    .line 5660
    add-int/2addr v9, v10

    .line 5663
    array-length v3, v2

    const/4 v12, 0x0

    invoke-static {v2, v12, v7, v13, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 5665
    array-length v3, v2

    add-int/2addr v13, v3

    .line 5645
    .end local v2    # "stripBytes":[B
    .end local v10    # "stripByteCount":I
    .end local v11    # "skipBytes":I
    .end local v14    # "stripOffset":I
    add-int/lit8 v8, v8, 0x1

    move-wide/from16 v11, v16

    move-object/from16 v3, v18

    move-object/from16 v2, p2

    goto :goto_1

    .line 5668
    .end local v8    # "i":I
    .end local v16    # "totalStripByteCount":J
    .end local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v11, "totalStripByteCount":J
    :cond_4
    move-object/from16 v18, v3

    move-wide/from16 v16, v11

    .end local v3    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v11    # "totalStripByteCount":J
    .restart local v16    # "totalStripByteCount":J
    .restart local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const/4 v2, 0x1

    iput-boolean v2, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    .line 5669
    iput-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 5670
    array-length v2, v7

    iput v2, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    .end local v5    # "stripOffsets":[J
    .end local v6    # "stripByteCounts":[J
    .end local v7    # "totalStripBytes":[B
    .end local v9    # "bytesRead":I
    .end local v13    # "bytesAdded":I
    .end local v16    # "totalStripByteCount":J
    goto :goto_2

    .line 5672
    .end local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v3    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_5
    move-object/from16 v18, v3

    .end local v3    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v18    # "stripOffsetsAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :goto_2
    return-void
.end method

.method private static isJpegFormat([B)Z
    .locals 4
    .param p0, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4707
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4708
    aget-byte v2, p0, v1

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->JPEG_SIGNATURE:[B

    aget-byte v3, v3, v1

    if-eq v2, v3, :cond_0

    .line 4709
    return v0

    .line 4707
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4712
    .end local v1    # "i":I
    :cond_1
    const/4 v0, 0x1

    return v0
.end method

.method private isOrfFormat([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4740
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4743
    .local v0, "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v1

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4745
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4747
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v1

    .line 4748
    .local v1, "orfSignature":S
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 4749
    const/16 v2, 0x4f52

    if-eq v1, v2, :cond_1

    const/16 v2, 0x5352

    if-ne v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v2, 0x1

    :goto_1
    return v2
.end method

.method private isRafFormat([B)Z
    .locals 5
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4722
    const-string v0, "FUJIFILMCCD-RAW"

    invoke-static {}, Ljava/nio/charset/Charset;->defaultCharset()Ljava/nio/charset/Charset;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v0

    .line 4723
    .local v0, "rafSignatureBytes":[B
    const/4 v1, 0x0

    move v2, v1

    .local v2, "i":I
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 4724
    aget-byte v3, p1, v2

    aget-byte v4, v0, v2

    if-eq v3, v4, :cond_0

    .line 4725
    return v1

    .line 4723
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 4728
    .end local v2    # "i":I
    :cond_1
    const/4 v1, 0x1

    return v1
.end method

.method private isRw2Format([B)Z
    .locals 3
    .param p1, "signatureCheckBytes"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4757
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 4760
    .local v0, "signatureInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v1

    iput-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4762
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 4764
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v1

    .line 4765
    .local v1, "signatureByte":S
    invoke-virtual {v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->close()V

    .line 4766
    const/16 v2, 0x55

    if-ne v1, v2, :cond_0

    const/4 v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2
.end method

.method private isSupportedDataType(Ljava/util/HashMap;)Z
    .locals 6
    .param p1, "thumbnailData"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5676
    const-string v0, "BitsPerSample"

    .line 5677
    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5678
    .local v0, "bitsPerSampleAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    .line 5679
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->access$500(Landroidx/exifinterface/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [I

    .line 5681
    .local v1, "bitsPerSampleValue":[I
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    invoke-static {v2, v1}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v2

    const/4 v3, 0x1

    if-eqz v2, :cond_0

    .line 5682
    return v3

    .line 5686
    :cond_0
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v4, 0x3

    if-ne v2, v4, :cond_3

    .line 5687
    const-string v2, "PhotometricInterpretation"

    .line 5688
    invoke-virtual {p1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5689
    .local v2, "photometricInterpretationAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_3

    .line 5690
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5691
    invoke-virtual {v2, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 5692
    .local v4, "photometricInterpretationValue":I
    if-ne v4, v3, :cond_1

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_GREYSCALE_2:[I

    .line 5693
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-nez v5, :cond_2

    :cond_1
    const/4 v5, 0x6

    if-ne v4, v5, :cond_3

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->BITS_PER_SAMPLE_RGB:[I

    .line 5695
    invoke-static {v1, v5}, Ljava/util/Arrays;->equals([I[I)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 5696
    :cond_2
    return v3

    .line 5706
    .end local v1    # "bitsPerSampleValue":[I
    .end local v2    # "photometricInterpretationAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v4    # "photometricInterpretationValue":I
    :cond_3
    const/4 v1, 0x0

    return v1
.end method

.method private isThumbnail(Ljava/util/HashMap;)Z
    .locals 5
    .param p1, "map"    # Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5712
    const-string v0, "ImageLength"

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5713
    .local v0, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const-string v1, "ImageWidth"

    invoke-virtual {p1, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5715
    .local v1, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    .line 5716
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    .line 5717
    .local v2, "imageLengthValue":I
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 5718
    .local v3, "imageWidthValue":I
    const/16 v4, 0x200

    if-gt v2, v4, :cond_0

    if-gt v3, v4, :cond_0

    .line 5719
    const/4 v4, 0x1

    return v4

    .line 5722
    .end local v2    # "imageLengthValue":I
    .end local v3    # "imageWidthValue":I
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method private loadAttributes(Ljava/io/InputStream;)V
    .locals 4
    .param p1, "in"    # Ljava/io/InputStream;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4196
    const/4 v0, 0x0

    move v1, v0

    .local v1, "i":I
    :goto_0
    :try_start_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 4197
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    aput-object v3, v2, v1

    .line 4196
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4201
    .end local v1    # "i":I
    :cond_0
    new-instance v1, Ljava/io/BufferedInputStream;

    const/16 v2, 0x1388

    invoke-direct {v1, p1, v2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    move-object p1, v1

    .line 4202
    move-object v1, p1

    check-cast v1, Ljava/io/BufferedInputStream;

    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getMimeType(Ljava/io/BufferedInputStream;)I

    move-result v1

    iput v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 4205
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v1, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 4207
    .local v1, "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    packed-switch v2, :pswitch_data_0

    goto :goto_1

    .line 4221
    :pswitch_0
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRw2Attributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4222
    goto :goto_1

    .line 4213
    :pswitch_1
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRafAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4214
    goto :goto_1

    .line 4217
    :pswitch_2
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getOrfAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4218
    goto :goto_1

    .line 4209
    :pswitch_3
    invoke-direct {p0, v1, v0, v0}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 4210
    goto :goto_1

    .line 4232
    :pswitch_4
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getRawAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4233
    nop

    .line 4240
    :goto_1
    invoke-direct {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V

    .line 4241
    const/4 v2, 0x1

    iput-boolean v2, p0, Landroidx/exifinterface/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v1    # "inputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    goto :goto_2

    .line 4252
    :catchall_0
    move-exception v0

    goto :goto_3

    .line 4242
    :catch_0
    move-exception v1

    .line 4245
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    iput-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mIsSupportedFile:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4252
    .end local v1    # "e":Ljava/io/IOException;
    :goto_2
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    .line 4257
    nop

    .line 4258
    return-void

    .line 4252
    :goto_3
    invoke-direct {p0}, Landroidx/exifinterface/media/ExifInterface;->addDefaultValuesForCompatibility()V

    throw v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_4
        :pswitch_3
        :pswitch_4
        :pswitch_4
        :pswitch_2
        :pswitch_4
        :pswitch_1
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method

.method private parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 5
    .param p1, "dataInputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "exifBytesLength"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5294
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5296
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {p1, v0}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5299
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v0

    .line 5300
    .local v0, "startCode":I
    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v2, 0x7

    if-eq v1, v2, :cond_1

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v2, 0xa

    if-eq v1, v2, :cond_1

    const/16 v1, 0x2a

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 5301
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid start code: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5305
    :cond_1
    :goto_0
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v1

    .line 5306
    .local v1, "firstIfdOffset":I
    const/16 v2, 0x8

    if-lt v1, v2, :cond_4

    if-ge v1, p2, :cond_4

    .line 5309
    add-int/lit8 v1, v1, -0x8

    .line 5310
    if-lez v1, :cond_3

    .line 5311
    invoke-virtual {p1, v1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->skipBytes(I)I

    move-result v2

    if-ne v2, v1, :cond_2

    goto :goto_1

    .line 5312
    :cond_2
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Couldn\'t jump to first Ifd: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5315
    :cond_3
    :goto_1
    return-void

    .line 5307
    :cond_4
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid first Ifd offset: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private printAttributes()V
    .locals 7

    .line 4262
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 4263
    const-string v1, "ExifInterface"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "The size of tag group["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, "]: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, v0

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4264
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 4265
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4266
    .local v3, "tagValue":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const-string v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "tagName: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", tagType: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", tagValue: \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 4267
    invoke-virtual {v3, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, "\'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 4266
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 4268
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .end local v3    # "tagValue":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    goto :goto_1

    .line 4262
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    .line 4270
    .end local v0    # "i":I
    :cond_1
    return-void
.end method

.method private readByteOrder(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)Ljava/nio/ByteOrder;
    .locals 4
    .param p1, "dataInputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5274
    invoke-virtual {p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v0

    .line 5275
    .local v0, "byteOrder":S
    const/16 v1, 0x4949

    if-eq v0, v1, :cond_1

    const/16 v1, 0x4d4d

    if-ne v0, v1, :cond_0

    .line 5285
    sget-object v1, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1

    .line 5287
    :cond_0
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid byte order: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 5280
    :cond_1
    sget-object v1, Ljava/nio/ByteOrder;->LITTLE_ENDIAN:Ljava/nio/ByteOrder;

    return-object v1
.end method

.method private readExifSegment([BI)V
    .locals 2
    .param p1, "exifBytes"    # [B
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5234
    new-instance v0, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;

    invoke-direct {v0, p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;-><init>([B)V

    .line 5238
    .local v0, "dataInputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    array-length v1, p1

    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->parseTiffHeaders(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5241
    invoke-direct {p0, v0, p2}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5242
    return-void
.end method

.method private readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 25
    .param p1, "dataInputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "ifdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5320
    move/from16 v2, p2

    invoke-static/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->access$700(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    add-int/lit8 v3, v3, 0x2

    invoke-static/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    if-le v3, v4, :cond_0

    .line 5322
    return-void

    .line 5325
    :cond_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v3

    .line 5329
    .local v3, "numberOfDirectoryEntry":S
    invoke-static/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->access$700(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    const/16 v5, 0xc

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    invoke-static/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v5

    if-le v4, v5, :cond_1

    .line 5331
    return-void

    .line 5335
    :cond_1
    const/4 v4, 0x0

    .local v4, "i":S
    :goto_0
    if-ge v4, v3, :cond_18

    .line 5336
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v7

    .line 5337
    .local v7, "tagNumber":I
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v8

    .line 5338
    .local v8, "dataFormat":I
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v9

    .line 5340
    .local v9, "numberOfComponents":I
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v10

    int-to-long v10, v10

    const-wide/16 v12, 0x4

    add-long/2addr v10, v12

    .line 5343
    .local v10, "nextEntryOffset":J
    sget-object v14, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForReading:[Ljava/util/HashMap;

    aget-object v14, v14, v2

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 5351
    .local v14, "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    const-wide/16 v15, 0x0

    .line 5352
    .local v15, "byteCount":J
    const/16 v17, 0x0

    .line 5353
    .local v17, "valid":Z
    const-wide/16 v18, 0x0

    const/4 v5, 0x7

    if-nez v14, :cond_2

    .line 5354
    const-string v6, "ExifInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip the tag entry since tag number is not defined: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 5355
    :cond_2
    if-lez v8, :cond_8

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    array-length v6, v6

    if-lt v8, v6, :cond_3

    goto :goto_2

    .line 5357
    :cond_3
    invoke-static {v14, v8}, Landroidx/exifinterface/media/ExifInterface$ExifTag;->access$900(Landroidx/exifinterface/media/ExifInterface$ExifTag;I)Z

    move-result v6

    if-nez v6, :cond_4

    .line 5358
    const-string v6, "ExifInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip the tag entry since data format ("

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    aget-object v13, v13, v8

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ") is unexpected for tag: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v13, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v6, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5361
    :cond_4
    if-ne v8, v5, :cond_5

    .line 5362
    iget v8, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 5364
    :cond_5
    int-to-long v12, v9

    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_BYTES_PER_FORMAT:[I

    aget v6, v6, v8

    int-to-long v5, v6

    mul-long v15, v12, v5

    .line 5365
    cmp-long v5, v15, v18

    if-ltz v5, :cond_7

    const-wide/32 v5, 0x7fffffff

    cmp-long v5, v15, v5

    if-lez v5, :cond_6

    goto :goto_1

    .line 5369
    :cond_6
    const/16 v17, 0x1

    goto :goto_3

    .line 5366
    :cond_7
    :goto_1
    const-string v5, "ExifInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip the tag entry since the number of components is invalid: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    .line 5356
    :cond_8
    :goto_2
    const-string v5, "ExifInterface"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Skip the tag entry since data format is invalid: "

    invoke-virtual {v6, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5372
    .end local v15    # "byteCount":J
    .local v5, "byteCount":J
    :goto_3
    move-wide v5, v15

    if-nez v17, :cond_9

    .line 5373
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5374
    nop

    .line 5335
    move/from16 v20, v3

    move/from16 v21, v4

    goto/16 :goto_8

    .line 5379
    :cond_9
    const-wide/16 v12, 0x4

    cmp-long v12, v5, v12

    if-lez v12, :cond_f

    .line 5380
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v12

    .line 5384
    .local v12, "offset":I
    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v15, 0x7

    if-ne v13, v15, :cond_c

    .line 5385
    const-string v13, "MakerNote"

    iget-object v15, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v13, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 5387
    iput v12, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfMakerNoteOffset:I

    .line 5412
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v8

    move/from16 v22, v9

    goto/16 :goto_4

    .line 5388
    :cond_a
    const/4 v13, 0x6

    if-ne v2, v13, :cond_b

    const-string v15, "ThumbnailImage"

    iget-object v13, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 5389
    invoke-virtual {v15, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 5391
    iput v12, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    .line 5392
    iput v9, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    .line 5394
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5395
    const/4 v15, 0x6

    invoke-static {v15, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5396
    .local v13, "compressionAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget v15, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailOffset:I

    move/from16 v20, v3

    move/from16 v21, v4

    int-to-long v3, v15

    .end local v3    # "numberOfDirectoryEntry":S
    .end local v4    # "i":S
    .local v20, "numberOfDirectoryEntry":S
    .local v21, "i":S
    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5397
    invoke-static {v3, v4, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v3

    .line 5398
    .local v3, "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget v4, v0, Landroidx/exifinterface/media/ExifInterface;->mOrfThumbnailLength:I

    move/from16 v23, v8

    move/from16 v22, v9

    int-to-long v8, v4

    .end local v8    # "dataFormat":I
    .end local v9    # "numberOfComponents":I
    .local v22, "numberOfComponents":I
    .local v23, "dataFormat":I
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5399
    invoke-static {v8, v9, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v4

    .line 5401
    .local v4, "jpegInterchangeFormatLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x4

    aget-object v8, v8, v9

    const-string v15, "Compression"

    invoke-virtual {v8, v15, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5402
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v15, "JPEGInterchangeFormat"

    invoke-virtual {v8, v15, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5404
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v9

    const-string v9, "JPEGInterchangeFormatLength"

    invoke-virtual {v8, v9, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5406
    .end local v3    # "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v4    # "jpegInterchangeFormatLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v13    # "compressionAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    goto :goto_4

    .line 5412
    .end local v20    # "numberOfDirectoryEntry":S
    .end local v21    # "i":S
    .end local v22    # "numberOfComponents":I
    .end local v23    # "dataFormat":I
    .local v3, "numberOfDirectoryEntry":S
    .local v4, "i":S
    .restart local v8    # "dataFormat":I
    .restart local v9    # "numberOfComponents":I
    :cond_b
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v8

    move/from16 v22, v9

    .end local v3    # "numberOfDirectoryEntry":S
    .end local v4    # "i":S
    .end local v8    # "dataFormat":I
    .end local v9    # "numberOfComponents":I
    .restart local v20    # "numberOfDirectoryEntry":S
    .restart local v21    # "i":S
    .restart local v22    # "numberOfComponents":I
    .restart local v23    # "dataFormat":I
    goto :goto_4

    .line 5407
    .end local v20    # "numberOfDirectoryEntry":S
    .end local v21    # "i":S
    .end local v22    # "numberOfComponents":I
    .end local v23    # "dataFormat":I
    .restart local v3    # "numberOfDirectoryEntry":S
    .restart local v4    # "i":S
    .restart local v8    # "dataFormat":I
    .restart local v9    # "numberOfComponents":I
    :cond_c
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v8

    move/from16 v22, v9

    .end local v3    # "numberOfDirectoryEntry":S
    .end local v4    # "i":S
    .end local v8    # "dataFormat":I
    .end local v9    # "numberOfComponents":I
    .restart local v20    # "numberOfDirectoryEntry":S
    .restart local v21    # "i":S
    .restart local v22    # "numberOfComponents":I
    .restart local v23    # "dataFormat":I
    iget v3, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/16 v4, 0xa

    if-ne v3, v4, :cond_d

    .line 5408
    const-string v3, "JpgFromRaw"

    iget-object v4, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 5409
    iput v12, v0, Landroidx/exifinterface/media/ExifInterface;->mRw2JpgFromRawOffset:I

    .line 5412
    :cond_d
    :goto_4
    int-to-long v3, v12

    add-long/2addr v3, v5

    invoke-static/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v8

    int-to-long v8, v8

    cmp-long v3, v3, v8

    if-gtz v3, :cond_e

    .line 5413
    int-to-long v3, v12

    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    goto :goto_5

    .line 5416
    :cond_e
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Skip the tag entry since data offset is invalid: "

    invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5417
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5418
    goto/16 :goto_8

    .line 5423
    .end local v12    # "offset":I
    .end local v20    # "numberOfDirectoryEntry":S
    .end local v21    # "i":S
    .end local v22    # "numberOfComponents":I
    .end local v23    # "dataFormat":I
    .restart local v3    # "numberOfDirectoryEntry":S
    .restart local v4    # "i":S
    .restart local v8    # "dataFormat":I
    .restart local v9    # "numberOfComponents":I
    :cond_f
    move/from16 v20, v3

    move/from16 v21, v4

    move/from16 v23, v8

    move/from16 v22, v9

    .end local v3    # "numberOfDirectoryEntry":S
    .end local v4    # "i":S
    .end local v8    # "dataFormat":I
    .end local v9    # "numberOfComponents":I
    .restart local v20    # "numberOfDirectoryEntry":S
    .restart local v21    # "i":S
    .restart local v22    # "numberOfComponents":I
    .restart local v23    # "dataFormat":I
    :goto_5
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sExifPointerTagMap:Ljava/util/HashMap;

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    .line 5428
    .local v3, "nextIfdType":Ljava/lang/Integer;
    if-eqz v3, :cond_11

    .line 5429
    const-wide/16 v8, -0x1

    .line 5431
    .local v8, "offset":J
    sparse-switch v23, :sswitch_data_0

    goto :goto_6

    .line 5446
    :sswitch_0
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v4

    int-to-long v8, v4

    .line 5447
    goto :goto_6

    .line 5437
    :sswitch_1
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readShort()S

    move-result v4

    int-to-long v8, v4

    .line 5438
    goto :goto_6

    .line 5441
    :sswitch_2
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedInt()J

    move-result-wide v8

    .line 5442
    goto :goto_6

    .line 5433
    :sswitch_3
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readUnsignedShort()I

    move-result v4

    int-to-long v8, v4

    .line 5434
    nop

    .line 5457
    :goto_6
    cmp-long v4, v8, v18

    if-lez v4, :cond_10

    invoke-static/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v4

    int-to-long v12, v4

    cmp-long v4, v8, v12

    if-gez v4, :cond_10

    .line 5458
    invoke-virtual {v1, v8, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5459
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-direct {v0, v1, v4}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_7

    .line 5461
    :cond_10
    const-string v4, "ExifInterface"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "Skip jump into the IFD since its offset is invalid: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v4, v12}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5464
    :goto_7
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5465
    goto :goto_8

    .line 5468
    .end local v8    # "offset":J
    :cond_11
    long-to-int v4, v5

    new-array v4, v4, [B

    .line 5469
    .local v4, "bytes":[B
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readFully([B)V

    .line 5470
    new-instance v8, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    const/4 v9, 0x0

    move/from16 v12, v22

    move/from16 v13, v23

    invoke-direct {v8, v13, v12, v4, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;-><init>(II[BLandroidx/exifinterface/media/ExifInterface$1;)V

    .line 5471
    .end local v22    # "numberOfComponents":I
    .end local v23    # "dataFormat":I
    .local v8, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v12, "numberOfComponents":I
    .local v13, "dataFormat":I
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v2

    iget-object v15, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v9, v15, v8}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5476
    const-string v9, "DNGVersion"

    iget-object v15, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_12

    .line 5477
    const/4 v9, 0x3

    iput v9, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 5483
    :cond_12
    const-string v9, "Make"

    iget-object v15, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_13

    const-string v9, "Model"

    iget-object v15, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_14

    :cond_13
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5484
    invoke-virtual {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v9

    const-string v15, "PENTAX"

    invoke-virtual {v9, v15}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_15

    :cond_14
    const-string v9, "Compression"

    iget-object v15, v14, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    .line 5485
    invoke-virtual {v9, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5486
    invoke-virtual {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    const v15, 0xffff

    if-ne v9, v15, :cond_16

    .line 5487
    :cond_15
    const/16 v9, 0x8

    iput v9, v0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    .line 5491
    :cond_16
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v9

    move-object/from16 v24, v3

    int-to-long v2, v9

    .end local v3    # "nextIfdType":Ljava/lang/Integer;
    .local v24, "nextIfdType":Ljava/lang/Integer;
    cmp-long v2, v2, v10

    if-eqz v2, :cond_17

    .line 5492
    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5335
    .end local v4    # "bytes":[B
    .end local v5    # "byteCount":J
    .end local v7    # "tagNumber":I
    .end local v8    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v10    # "nextEntryOffset":J
    .end local v12    # "numberOfComponents":I
    .end local v13    # "dataFormat":I
    .end local v14    # "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v17    # "valid":Z
    .end local v24    # "nextIfdType":Ljava/lang/Integer;
    :cond_17
    :goto_8
    add-int/lit8 v4, v21, 0x1

    int-to-short v4, v4

    .end local v21    # "i":S
    .local v4, "i":S
    move/from16 v3, v20

    move/from16 v2, p2

    goto/16 :goto_0

    .line 5496
    .end local v4    # "i":S
    .end local v20    # "numberOfDirectoryEntry":S
    .local v3, "numberOfDirectoryEntry":S
    :cond_18
    move/from16 v20, v3

    .end local v3    # "numberOfDirectoryEntry":S
    .restart local v20    # "numberOfDirectoryEntry":S
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->peek()I

    move-result v2

    const/4 v3, 0x4

    add-int/2addr v2, v3

    invoke-static/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-gt v2, v3, :cond_1a

    .line 5497
    invoke-virtual/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->readInt()I

    move-result v2

    .line 5503
    .local v2, "nextIfdOffset":I
    const/16 v3, 0x8

    if-le v2, v3, :cond_1a

    invoke-static/range {p1 .. p1}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->access$800(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)I

    move-result v3

    if-ge v2, v3, :cond_1a

    .line 5504
    int-to-long v3, v2

    invoke-virtual {v1, v3, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;->seek(J)V

    .line 5505
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x4

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_19

    .line 5507
    invoke-direct {v0, v1, v4}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    goto :goto_9

    .line 5508
    :cond_19
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x5

    aget-object v3, v3, v4

    invoke-virtual {v3}, Ljava/util/HashMap;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 5509
    invoke-direct {v0, v1, v4}, Landroidx/exifinterface/media/ExifInterface;->readImageFileDirectory(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5513
    .end local v2    # "nextIfdOffset":I
    :cond_1a
    :goto_9
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_3
        0x4 -> :sswitch_2
        0x8 -> :sswitch_1
        0x9 -> :sswitch_0
        0xd -> :sswitch_0
    .end sparse-switch
.end method

.method private removeAttribute(Ljava/lang/String;)V
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;

    .line 4183
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 4184
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4183
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 4186
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method private retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 4
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5524
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    const-string v1, "ImageLength"

    .line 5525
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5526
    .local v0, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "ImageWidth"

    .line 5527
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5529
    .local v1, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_0

    if-nez v1, :cond_1

    .line 5531
    :cond_0
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "JPEGInterchangeFormat"

    .line 5532
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5533
    .local v2, "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_1

    .line 5534
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5535
    invoke-virtual {v2, v3}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v3

    .line 5538
    .local v3, "jpegInterchangeFormat":I
    invoke-direct {p0, p1, v3, p2}, Landroidx/exifinterface/media/ExifInterface;->getJpegAttributes(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;II)V

    .line 5541
    .end local v2    # "jpegInterchangeFormatAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v3    # "jpegInterchangeFormat":I
    :cond_1
    return-void
.end method

.method private saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 12
    .param p1, "inputStream"    # Ljava/io/InputStream;
    .param p2, "outputStream"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5142
    new-instance v0, Ljava/io/DataInputStream;

    invoke-direct {v0, p1}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 5143
    .local v0, "dataInputStream":Ljava/io/DataInputStream;
    new-instance v1, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;

    sget-object v2, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-direct {v1, p2, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;-><init>(Ljava/io/OutputStream;Ljava/nio/ByteOrder;)V

    .line 5145
    .local v1, "dataOutputStream":Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/4 v3, -0x1

    if-ne v2, v3, :cond_a

    .line 5148
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5149
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    const/16 v4, -0x28

    if-ne v2, v4, :cond_9

    .line 5152
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5155
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5156
    const/16 v2, -0x1f

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5157
    const/4 v4, 0x6

    invoke-direct {p0, v1, v4}, Landroidx/exifinterface/media/ExifInterface;->writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;I)I

    .line 5159
    const/16 v5, 0x1000

    new-array v5, v5, [B

    .line 5162
    .local v5, "bytes":[B
    :goto_0
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 5163
    .local v6, "marker":B
    if-ne v6, v3, :cond_8

    .line 5166
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 5167
    const/4 v7, 0x0

    if-eq v6, v2, :cond_1

    packed-switch v6, :pswitch_data_0

    .line 5212
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5213
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5214
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    .line 5215
    .local v8, "length":I
    invoke-virtual {v1, v8}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5216
    add-int/lit8 v8, v8, -0x2

    .line 5217
    if-ltz v8, :cond_0

    .line 5221
    :goto_1
    if-lez v8, :cond_6

    array-length v9, v5

    .line 5222
    invoke-static {v8, v9}, Ljava/lang/Math;->min(II)I

    move-result v9

    .line 5221
    invoke-virtual {v0, v5, v7, v9}, Ljava/io/DataInputStream;->read([BII)I

    move-result v9

    move v10, v9

    .local v10, "read":I
    if-ltz v9, :cond_6

    .line 5223
    invoke-virtual {v1, v5, v7, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 5224
    sub-int/2addr v8, v10

    .end local v10    # "read":I
    goto :goto_1

    .line 5218
    :cond_0
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5204
    .end local v8    # "length":I
    :pswitch_0
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5205
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5207
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)I

    .line 5208
    return-void

    .line 5169
    :cond_1
    invoke-virtual {v0}, Ljava/io/DataInputStream;->readUnsignedShort()I

    move-result v8

    add-int/lit8 v8, v8, -0x2

    .line 5170
    .restart local v8    # "length":I
    if-ltz v8, :cond_7

    .line 5173
    new-array v9, v4, [B

    .line 5174
    .local v9, "identifier":[B
    if-lt v8, v4, :cond_4

    .line 5175
    invoke-virtual {v0, v9}, Ljava/io/DataInputStream;->read([B)I

    move-result v10

    if-ne v10, v4, :cond_3

    .line 5178
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-static {v9, v10}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 5180
    add-int/lit8 v7, v8, -0x6

    invoke-virtual {v0, v7}, Ljava/io/DataInputStream;->skipBytes(I)I

    move-result v7

    add-int/lit8 v10, v8, -0x6

    if-ne v7, v10, :cond_2

    .end local v6    # "marker":B
    .end local v8    # "length":I
    .end local v9    # "identifier":[B
    goto :goto_3

    .line 5181
    .restart local v6    # "marker":B
    .restart local v8    # "length":I
    .restart local v9    # "identifier":[B
    :cond_2
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5176
    :cond_3
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid exif"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5187
    :cond_4
    invoke-virtual {v1, v3}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5188
    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5189
    add-int/lit8 v10, v8, 0x2

    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5190
    if-lt v8, v4, :cond_5

    .line 5191
    add-int/lit8 v8, v8, -0x6

    .line 5192
    invoke-virtual {v1, v9}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 5195
    :cond_5
    :goto_2
    if-lez v8, :cond_6

    array-length v10, v5

    .line 5196
    invoke-static {v8, v10}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 5195
    invoke-virtual {v0, v5, v7, v10}, Ljava/io/DataInputStream;->read([BII)I

    move-result v10

    move v11, v10

    .local v11, "read":I
    if-ltz v10, :cond_6

    .line 5197
    invoke-virtual {v1, v5, v7, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .line 5198
    sub-int/2addr v8, v11

    .end local v11    # "read":I
    goto :goto_2

    .line 5229
    .end local v6    # "marker":B
    .end local v8    # "length":I
    .end local v9    # "identifier":[B
    :cond_6
    :goto_3
    goto/16 :goto_0

    .line 5171
    .restart local v6    # "marker":B
    .restart local v8    # "length":I
    :cond_7
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid length"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5164
    .end local v8    # "length":I
    :cond_8
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid marker"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5150
    .end local v5    # "bytes":[B
    .end local v6    # "marker":B
    :cond_9
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid marker"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5146
    :cond_a
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Invalid marker"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch -0x27
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private setThumbnailData(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;)V
    .locals 4
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5545
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v1, 0x4

    aget-object v0, v0, v1

    .line 5547
    .local v0, "thumbnailData":Ljava/util/HashMap;
    const-string v1, "Compression"

    .line 5548
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5549
    .local v1, "compressionAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_1

    .line 5550
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v2

    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 5551
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    packed-switch v2, :pswitch_data_0

    goto :goto_0

    .line 5553
    :pswitch_0
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 5554
    goto :goto_0

    .line 5558
    :cond_0
    :pswitch_1
    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isSupportedDataType(Ljava/util/HashMap;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5559
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromStrips(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    goto :goto_0

    .line 5566
    :cond_1
    const/4 v2, 0x6

    iput v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    .line 5567
    invoke-direct {p0, p1, v0}, Landroidx/exifinterface/media/ExifInterface;->handleThumbnailFromJfif(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;Ljava/util/HashMap;)V

    .line 5569
    :cond_2
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x6
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private swapBasedOnImageSize(II)V
    .locals 11
    .param p1, "firstIfdType"    # I
    .param p2, "secondIfdType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 6398
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_1

    .line 6405
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, p1

    const-string v1, "ImageLength"

    .line 6406
    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6407
    .local v0, "firstImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p1

    const-string v2, "ImageWidth"

    .line 6408
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6409
    .local v1, "firstImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "ImageLength"

    .line 6410
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6411
    .local v2, "secondImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "ImageWidth"

    .line 6412
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 6414
    .local v3, "secondImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v0, :cond_3

    if-nez v1, :cond_1

    goto :goto_0

    .line 6418
    :cond_1
    if-eqz v2, :cond_3

    if-nez v3, :cond_2

    goto :goto_0

    .line 6423
    :cond_2
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 6424
    .local v4, "firstImageLengthValue":I
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v5

    .line 6425
    .local v5, "firstImageWidthValue":I
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    .line 6426
    .local v6, "secondImageLengthValue":I
    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 6428
    .local v7, "secondImageWidthValue":I
    if-ge v4, v6, :cond_3

    if-ge v5, v7, :cond_3

    .line 6430
    iget-object v8, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, p1

    .line 6431
    .local v8, "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v10, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, p2

    aput-object v10, v9, p1

    .line 6432
    iget-object v9, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aput-object v8, v9, p2

    .line 6435
    .end local v4    # "firstImageLengthValue":I
    .end local v5    # "firstImageWidthValue":I
    .end local v6    # "secondImageLengthValue":I
    .end local v7    # "secondImageWidthValue":I
    .end local v8    # "tempMap":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    :cond_3
    :goto_0
    return-void

    .line 6402
    .end local v0    # "firstImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v1    # "firstImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v2    # "secondImageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v3    # "secondImageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_4
    :goto_1
    return-void
.end method

.method private updateAttribute(Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;)Z
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "value"    # Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4167
    const/4 v0, 0x0

    .line 4168
    .local v0, "updated":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 4169
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4170
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, v1

    invoke-virtual {v2, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4171
    const/4 v0, 0x1

    .line 4168
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 4174
    .end local v1    # "i":I
    :cond_1
    return v0
.end method

.method private updateImageSizeValues(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V
    .locals 16
    .param p1, "in"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;
    .param p2, "imageType"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 5772
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v2, "DefaultCropSize"

    .line 5773
    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5775
    .local v1, "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v2, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v2, v2, p2

    const-string v3, "SensorTopBorder"

    .line 5776
    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5777
    .local v2, "topBorderAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v3, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v3, p2

    const-string v4, "SensorLeftBorder"

    .line 5778
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5779
    .local v3, "leftBorderAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, p2

    const-string v5, "SensorBottomBorder"

    .line 5780
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5781
    .local v4, "bottomBorderAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, p2

    const-string v6, "SensorRightBorder"

    .line 5782
    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5784
    .local v5, "rightBorderAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v1, :cond_5

    .line 5787
    iget v6, v1, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v7, 0x5

    const/4 v8, 0x1

    const/4 v9, 0x0

    const/4 v10, 0x2

    if-ne v6, v7, :cond_2

    .line 5788
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5789
    invoke-static {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->access$500(Landroidx/exifinterface/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 5790
    .local v6, "defaultCropSizeValue":[Landroidx/exifinterface/media/ExifInterface$Rational;
    if-eqz v6, :cond_1

    array-length v7, v6

    if-eq v7, v10, :cond_0

    goto :goto_0

    .line 5795
    :cond_0
    aget-object v7, v6, v9

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5796
    invoke-static {v7, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 5797
    .local v7, "defaultCropSizeXAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    aget-object v8, v6, v8

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5798
    invoke-static {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational(Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 5799
    .local v6, "defaultCropSizeYAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    goto :goto_1

    .line 5791
    .end local v7    # "defaultCropSizeXAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v6, "defaultCropSizeValue":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_1
    :goto_0
    const-string v7, "ExifInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid crop size values. cropSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5792
    invoke-static {v6}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5791
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5793
    return-void

    .line 5800
    .end local v6    # "defaultCropSizeValue":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_2
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5801
    invoke-static {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->access$500(Landroidx/exifinterface/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [I

    .line 5802
    .local v6, "defaultCropSizeValue":[I
    if-eqz v6, :cond_4

    array-length v7, v6

    if-eq v7, v10, :cond_3

    goto :goto_2

    .line 5807
    :cond_3
    aget v7, v6, v9

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5808
    invoke-static {v7, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v7

    .line 5809
    .restart local v7    # "defaultCropSizeXAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    aget v8, v6, v8

    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5810
    invoke-static {v8, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v6

    .line 5812
    .local v6, "defaultCropSizeYAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :goto_1
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, p2

    const-string v9, "ImageWidth"

    invoke-virtual {v8, v9, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5813
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, p2

    const-string v9, "ImageLength"

    invoke-virtual {v8, v9, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5814
    .end local v6    # "defaultCropSizeYAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v7    # "defaultCropSizeXAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    nop

    .line 5834
    move-object v15, v1

    goto :goto_4

    .line 5803
    .local v6, "defaultCropSizeValue":[I
    :cond_4
    :goto_2
    const-string v7, "ExifInterface"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "Invalid crop size values. cropSize="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5804
    invoke-static {v6}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 5803
    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 5805
    return-void

    .line 5814
    .end local v6    # "defaultCropSizeValue":[I
    :cond_5
    if-eqz v2, :cond_7

    if-eqz v3, :cond_7

    if-eqz v4, :cond_7

    if-eqz v5, :cond_7

    .line 5817
    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v6}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v6

    .line 5818
    .local v6, "topBorderValue":I
    iget-object v7, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v4, v7}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v7

    .line 5819
    .local v7, "bottomBorderValue":I
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v5, v8}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v8

    .line 5820
    .local v8, "rightBorderValue":I
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v9}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v9

    .line 5821
    .local v9, "leftBorderValue":I
    if-le v7, v6, :cond_6

    if-le v8, v9, :cond_6

    .line 5822
    sub-int v10, v7, v6

    .line 5823
    .local v10, "length":I
    sub-int v11, v8, v9

    .line 5824
    .local v11, "width":I
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5825
    invoke-static {v10, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 5826
    .local v12, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5827
    invoke-static {v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort(ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5828
    .local v13, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v14, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v14, v14, p2

    move-object v15, v1

    const-string v1, "ImageLength"

    .end local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .local v15, "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    invoke-virtual {v14, v1, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5829
    iget-object v1, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v1, v1, p2

    const-string v14, "ImageWidth"

    invoke-virtual {v1, v14, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .end local v6    # "topBorderValue":I
    .end local v7    # "bottomBorderValue":I
    .end local v8    # "rightBorderValue":I
    .end local v9    # "leftBorderValue":I
    .end local v10    # "length":I
    .end local v11    # "width":I
    .end local v12    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v13    # "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    goto :goto_3

    .line 5831
    .end local v15    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_6
    move-object v15, v1

    .end local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v15    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :goto_3
    goto :goto_4

    .line 5832
    .end local v15    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_7
    move-object v15, v1

    .end local v1    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .restart local v15    # "defaultCropSizeAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    invoke-direct/range {p0 .. p2}, Landroidx/exifinterface/media/ExifInterface;->retrieveJpegImageSize(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataInputStream;I)V

    .line 5834
    :goto_4
    return-void
.end method

.method private validateImages(Ljava/io/InputStream;)V
    .locals 7
    .param p1, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 5728
    const/4 v0, 0x0

    const/4 v1, 0x5

    invoke-direct {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5729
    const/4 v2, 0x4

    invoke-direct {p0, v0, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5730
    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->swapBasedOnImageSize(II)V

    .line 5735
    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v4, 0x1

    aget-object v3, v3, v4

    const-string v5, "PixelXDimension"

    .line 5736
    invoke-virtual {v3, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5737
    .local v3, "pixelXDimAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v5, v4

    const-string v5, "PixelYDimension"

    .line 5738
    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5739
    .local v4, "pixelYDimAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    .line 5740
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v0

    const-string v6, "ImageWidth"

    invoke-virtual {v5, v6, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5741
    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v5, v0

    const-string v5, "ImageLength"

    invoke-virtual {v0, v5, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5746
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-virtual {v0}, Ljava/util/HashMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5747
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v1

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5748
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    iget-object v5, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v1

    aput-object v5, v0, v2

    .line 5749
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    aput-object v5, v0, v1

    .line 5754
    :cond_1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v2

    invoke-direct {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->isThumbnail(Ljava/util/HashMap;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5755
    const-string v0, "ExifInterface"

    const-string v1, "No image meets the size requirements of a thumbnail image."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 5757
    :cond_2
    return-void
.end method

.method private writeExifSegment(Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;I)I
    .locals 18
    .param p1, "dataOutputStream"    # Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;
    .param p2, "exifOffsetFromBeginning"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 5840
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v2, v2

    new-array v2, v2, [I

    .line 5841
    .local v2, "ifdOffsets":[I
    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v3, v3

    new-array v3, v3, [I

    .line 5844
    .local v3, "ifdDataSizes":[I
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 5845
    .local v8, "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    iget-object v9, v8, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v9}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 5844
    .end local v8    # "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 5848
    :cond_0
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 5849
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v4, v4, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    invoke-direct {v0, v4}, Landroidx/exifinterface/media/ExifInterface;->removeAttribute(Ljava/lang/String;)V

    .line 5852
    move v4, v6

    .local v4, "ifdType":I
    :goto_1
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v5, v5

    if-ge v4, v5, :cond_3

    .line 5853
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v5, v4

    invoke-virtual {v5}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v5

    array-length v7, v5

    move v8, v6

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v5, v8

    .line 5854
    .local v9, "obj":Ljava/lang/Object;
    move-object v10, v9

    check-cast v10, Ljava/util/Map$Entry;

    .line 5855
    .local v10, "entry":Ljava/util/Map$Entry;
    invoke-interface {v10}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v11

    if-nez v11, :cond_1

    .line 5856
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v4

    invoke-interface {v10}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5853
    .end local v9    # "obj":Ljava/lang/Object;
    .end local v10    # "entry":Ljava/util/Map$Entry;
    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 5852
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 5863
    .end local v4    # "ifdType":I
    :cond_3
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    const-wide/16 v7, 0x0

    if-nez v4, :cond_4

    .line 5864
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v9, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v9, v9, v5

    iget-object v9, v9, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5865
    invoke-static {v7, v8, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 5864
    invoke-virtual {v4, v9, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5867
    :cond_4
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v9, 0x2

    aget-object v4, v4, v9

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_5

    .line 5868
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v6

    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v10, v10, v9

    iget-object v10, v10, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5869
    invoke-static {v7, v8, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 5868
    invoke-virtual {v4, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5871
    :cond_5
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v10, 0x3

    aget-object v4, v4, v10

    invoke-virtual {v4}, Ljava/util/HashMap;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_6

    .line 5872
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v5

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5873
    invoke-static {v7, v8, v12}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v12

    .line 5872
    invoke-virtual {v4, v11, v12}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5875
    :cond_6
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v11, 0x4

    if-eqz v4, :cond_7

    .line 5876
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5877
    invoke-static {v7, v8, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5876
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5878
    iget-object v4, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v4, v4, v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_LENGTH_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    iget v13, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    int-to-long v13, v13

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5879
    invoke-static {v13, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5878
    invoke-virtual {v4, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5884
    :cond_7
    move v4, v6

    .local v4, "i":I
    :goto_3
    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v12, v12

    if-ge v4, v12, :cond_a

    .line 5885
    const/4 v12, 0x0

    .line 5886
    .local v12, "sum":I
    iget-object v13, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v13, v13, v4

    invoke-virtual {v13}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v13

    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v13

    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_9

    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/util/Map$Entry;

    .line 5887
    .local v14, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    invoke-interface {v14}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5888
    .local v15, "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    invoke-virtual {v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v7

    .line 5889
    .local v7, "size":I
    if-le v7, v11, :cond_8

    .line 5890
    add-int/2addr v12, v7

    .line 5892
    .end local v7    # "size":I
    .end local v14    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .end local v15    # "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_8
    nop

    .line 5886
    const-wide/16 v7, 0x0

    goto :goto_4

    .line 5893
    :cond_9
    aget v7, v3, v4

    add-int/2addr v7, v12

    aput v7, v3, v4

    .line 5884
    .end local v12    # "sum":I
    add-int/lit8 v4, v4, 0x1

    const-wide/16 v7, 0x0

    goto :goto_3

    .line 5897
    .end local v4    # "i":I
    :cond_a
    const/16 v4, 0x8

    .line 5898
    .local v4, "position":I
    move v7, v4

    move v4, v6

    .local v4, "ifdType":I
    .local v7, "position":I
    :goto_5
    sget-object v8, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v8, v8

    if-ge v4, v8, :cond_c

    .line 5899
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/util/HashMap;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_b

    .line 5900
    aput v7, v2, v4

    .line 5901
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v4

    invoke-virtual {v8}, Ljava/util/HashMap;->size()I

    move-result v8

    mul-int/lit8 v8, v8, 0xc

    add-int/2addr v8, v9

    add-int/2addr v8, v11

    aget v12, v3, v4

    add-int/2addr v8, v12

    add-int/2addr v7, v8

    .line 5898
    :cond_b
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 5904
    .end local v4    # "ifdType":I
    :cond_c
    iget-boolean v4, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v4, :cond_d

    .line 5905
    move v4, v7

    .line 5906
    .local v4, "thumbnailOffset":I
    iget-object v8, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v11

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->JPEG_INTERCHANGE_FORMAT_TAG:Landroidx/exifinterface/media/ExifInterface$ExifTag;

    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    int-to-long v13, v4

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5907
    invoke-static {v13, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5906
    invoke-virtual {v8, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5908
    add-int v12, p2, v4

    iput v12, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    .line 5909
    iget v12, v0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    add-int/2addr v7, v12

    .line 5913
    .end local v4    # "thumbnailOffset":I
    :cond_d
    add-int/lit8 v4, v7, 0x8

    .line 5923
    .local v4, "totalSize":I
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v5

    invoke-virtual {v12}, Ljava/util/HashMap;->isEmpty()Z

    move-result v12

    if-nez v12, :cond_e

    .line 5924
    iget-object v12, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v6

    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v13, v13, v5

    iget-object v13, v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v14, v2, v5

    int-to-long v14, v14

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5925
    invoke-static {v14, v15, v11}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v11

    .line 5924
    invoke-virtual {v12, v13, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5927
    :cond_e
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v9

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_f

    .line 5928
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v6

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v12, v12, v9

    iget-object v12, v12, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v13, v2, v9

    int-to-long v13, v13

    iget-object v15, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 5929
    invoke-static {v13, v14, v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 5928
    invoke-virtual {v11, v12, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5931
    :cond_f
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v10

    invoke-virtual {v11}, Ljava/util/HashMap;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_10

    .line 5932
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v5, v11, v5

    sget-object v11, Landroidx/exifinterface/media/ExifInterface;->EXIF_POINTER_TAGS:[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    aget-object v11, v11, v10

    iget-object v11, v11, Landroidx/exifinterface/media/ExifInterface$ExifTag;->name:Ljava/lang/String;

    aget v10, v2, v10

    int-to-long v12, v10

    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v12, v13, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong(JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    invoke-virtual {v5, v11, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5937
    :cond_10
    invoke-virtual {v1, v4}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5938
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->IDENTIFIER_EXIF_APP1:[B

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 5939
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    sget-object v10, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    if-ne v5, v10, :cond_11

    const/16 v5, 0x4d4d

    goto :goto_6

    :cond_11
    const/16 v5, 0x4949

    :goto_6
    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeShort(S)V

    .line 5941
    iget-object v5, v0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 5942
    const/16 v5, 0x2a

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5943
    const-wide/16 v10, 0x8

    invoke-virtual {v1, v10, v11}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 5946
    move v5, v6

    .local v5, "ifdType":I
    :goto_7
    sget-object v10, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v10, v10

    if-ge v5, v10, :cond_19

    .line 5947
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/util/HashMap;->isEmpty()Z

    move-result v10

    if-nez v10, :cond_18

    .line 5950
    iget-object v10, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v10, v10, v5

    invoke-virtual {v10}, Ljava/util/HashMap;->size()I

    move-result v10

    invoke-virtual {v1, v10}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5953
    aget v10, v2, v5

    add-int/2addr v10, v9

    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Ljava/util/HashMap;->size()I

    move-result v11

    mul-int/lit8 v11, v11, 0xc

    add-int/2addr v10, v11

    const/4 v11, 0x4

    add-int/2addr v10, v11

    .line 5954
    .local v10, "dataOffset":I
    iget-object v11, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v11, v11, v5

    invoke-virtual {v11}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_8
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_14

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/util/Map$Entry;

    .line 5956
    .local v12, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v13, v13, v5

    invoke-interface {v12}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v14

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 5957
    .local v13, "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    iget v14, v13, Landroidx/exifinterface/media/ExifInterface$ExifTag;->number:I

    .line 5958
    .local v14, "tagNumber":I
    invoke-interface {v12}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5959
    .local v15, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    invoke-virtual {v15}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->size()I

    move-result v9

    .line 5961
    .local v9, "size":I
    invoke-virtual {v1, v14}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5962
    iget v6, v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedShort(I)V

    .line 5963
    iget v6, v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->numberOfComponents:I

    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeInt(I)V

    .line 5964
    const/4 v6, 0x4

    if-le v9, v6, :cond_12

    .line 5965
    move/from16 v16, v7

    int-to-long v6, v10

    .end local v7    # "position":I
    .local v16, "position":I
    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 5966
    add-int/2addr v10, v9

    goto :goto_a

    .line 5968
    .end local v16    # "position":I
    .restart local v7    # "position":I
    :cond_12
    move/from16 v16, v7

    .end local v7    # "position":I
    .restart local v16    # "position":I
    iget-object v6, v15, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 5970
    const/4 v6, 0x4

    if-ge v9, v6, :cond_13

    .line 5971
    move v7, v9

    .local v7, "i":I
    :goto_9
    if-ge v7, v6, :cond_13

    .line 5972
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeByte(I)V

    .line 5971
    add-int/lit8 v7, v7, 0x1

    const/4 v6, 0x4

    goto :goto_9

    .line 5976
    .end local v7    # "i":I
    .end local v9    # "size":I
    .end local v12    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .end local v13    # "tag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v14    # "tagNumber":I
    .end local v15    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    :cond_13
    :goto_a
    nop

    .line 5954
    move/from16 v7, v16

    const/4 v6, 0x0

    const/4 v9, 0x2

    goto :goto_8

    .line 5981
    .end local v16    # "position":I
    .local v7, "position":I
    :cond_14
    move/from16 v16, v7

    .end local v7    # "position":I
    .restart local v16    # "position":I
    if-nez v5, :cond_15

    iget-object v6, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v7, 0x4

    aget-object v6, v6, v7

    invoke-virtual {v6}, Ljava/util/HashMap;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_15

    .line 5982
    aget v6, v2, v7

    int-to-long v6, v6

    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 5988
    const-wide/16 v6, 0x0

    goto :goto_b

    .line 5984
    :cond_15
    const-wide/16 v6, 0x0

    invoke-virtual {v1, v6, v7}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->writeUnsignedInt(J)V

    .line 5988
    :goto_b
    iget-object v9, v0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v9, v9, v5

    invoke-virtual {v9}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_c
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_17

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/util/Map$Entry;

    .line 5989
    .local v11, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    invoke-interface {v11}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 5991
    .local v12, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v13, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v13, v13

    const/4 v14, 0x4

    if-le v13, v14, :cond_16

    .line 5992
    iget-object v13, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    iget-object v15, v12, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->bytes:[B

    array-length v15, v15

    const/4 v6, 0x0

    invoke-virtual {v1, v13, v6, v15}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([BII)V

    .end local v11    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Landroidx/exifinterface/media/ExifInterface$ExifAttribute;>;"
    .end local v12    # "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    goto :goto_d

    .line 5994
    :cond_16
    const/4 v6, 0x0

    .line 5988
    :goto_d
    const-wide/16 v6, 0x0

    goto :goto_c

    .line 5946
    .end local v10    # "dataOffset":I
    :cond_17
    const/4 v6, 0x0

    const/4 v14, 0x4

    goto :goto_e

    .end local v16    # "position":I
    .restart local v7    # "position":I
    :cond_18
    move/from16 v16, v7

    const/4 v14, 0x4

    .end local v7    # "position":I
    .restart local v16    # "position":I
    :goto_e
    add-int/lit8 v5, v5, 0x1

    move/from16 v7, v16

    const/4 v9, 0x2

    goto/16 :goto_7

    .line 5999
    .end local v5    # "ifdType":I
    .end local v16    # "position":I
    .restart local v7    # "position":I
    :cond_19
    move/from16 v16, v7

    .end local v7    # "position":I
    .restart local v16    # "position":I
    iget-boolean v5, v0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-eqz v5, :cond_1a

    .line 6000
    invoke-virtual/range {p0 .. p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v5

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->write([B)V

    .line 6004
    :cond_1a
    sget-object v5, Ljava/nio/ByteOrder;->BIG_ENDIAN:Ljava/nio/ByteOrder;

    invoke-virtual {v1, v5}, Landroidx/exifinterface/media/ExifInterface$ByteOrderedDataOutputStream;->setByteOrder(Ljava/nio/ByteOrder;)V

    .line 6006
    return v4
.end method


# virtual methods
.method public flipHorizontally()V
    .locals 4

    .line 4075
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4077
    .local v0, "currentOrientation":I
    packed-switch v0, :pswitch_data_0

    .line 4104
    const/4 v1, 0x0

    goto :goto_0

    .line 4097
    :pswitch_0
    const/4 v1, 0x7

    .line 4098
    .local v1, "resultOrientation":I
    goto :goto_0

    .line 4094
    .end local v1    # "resultOrientation":I
    :pswitch_1
    const/16 v1, 0x8

    .line 4095
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4091
    .end local v1    # "resultOrientation":I
    :pswitch_2
    const/4 v1, 0x5

    .line 4092
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4088
    .end local v1    # "resultOrientation":I
    :pswitch_3
    const/4 v1, 0x6

    .line 4089
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4085
    .end local v1    # "resultOrientation":I
    :pswitch_4
    const/4 v1, 0x3

    .line 4086
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4082
    .end local v1    # "resultOrientation":I
    :pswitch_5
    const/4 v1, 0x4

    .line 4083
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4079
    .end local v1    # "resultOrientation":I
    :pswitch_6
    const/4 v1, 0x1

    .line 4080
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4100
    .end local v1    # "resultOrientation":I
    :pswitch_7
    const/4 v1, 0x2

    .line 4101
    .restart local v1    # "resultOrientation":I
    nop

    .line 4104
    :goto_0
    nop

    .line 4107
    const-string v2, "Orientation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4108
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public flipVertically()V
    .locals 4

    .line 4036
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4038
    .local v0, "currentOrientation":I
    packed-switch v0, :pswitch_data_0

    .line 4065
    const/4 v1, 0x0

    goto :goto_0

    .line 4058
    :pswitch_0
    const/4 v1, 0x5

    .line 4059
    .local v1, "resultOrientation":I
    goto :goto_0

    .line 4055
    .end local v1    # "resultOrientation":I
    :pswitch_1
    const/4 v1, 0x6

    .line 4056
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4052
    .end local v1    # "resultOrientation":I
    :pswitch_2
    const/4 v1, 0x7

    .line 4053
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4049
    .end local v1    # "resultOrientation":I
    :pswitch_3
    const/16 v1, 0x8

    .line 4050
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4046
    .end local v1    # "resultOrientation":I
    :pswitch_4
    const/4 v1, 0x1

    .line 4047
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4043
    .end local v1    # "resultOrientation":I
    :pswitch_5
    const/4 v1, 0x2

    .line 4044
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4040
    .end local v1    # "resultOrientation":I
    :pswitch_6
    const/4 v1, 0x3

    .line 4041
    .restart local v1    # "resultOrientation":I
    goto :goto_0

    .line 4061
    .end local v1    # "resultOrientation":I
    :pswitch_7
    const/4 v1, 0x4

    .line 4062
    .restart local v1    # "resultOrientation":I
    nop

    .line 4065
    :goto_0
    nop

    .line 4068
    const-string v2, "Orientation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4069
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getAltitude(D)D
    .locals 6
    .param p1, "defaultValue"    # D

    .line 4548
    const-string v0, "GPSAltitude"

    const-wide/high16 v1, -0x4010000000000000L    # -1.0

    invoke-virtual {p0, v0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttributeDouble(Ljava/lang/String;D)D

    move-result-wide v0

    .line 4549
    .local v0, "altitude":D
    const-string v2, "GPSAltitudeRef"

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v2

    .line 4551
    .local v2, "ref":I
    const-wide/16 v4, 0x0

    cmpl-double v4, v0, v4

    if-ltz v4, :cond_1

    if-ltz v2, :cond_1

    .line 4552
    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    goto :goto_0

    :cond_0
    move v3, v4

    :goto_0
    int-to-double v3, v3

    mul-double/2addr v3, v0

    return-wide v3

    .line 4554
    :cond_1
    return-wide p1
.end method

.method public getAttribute(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 3774
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3775
    .local v0, "attribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    const/4 v1, 0x0

    if-eqz v0, :cond_5

    .line 3776
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 3777
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getStringValue(Ljava/nio/ByteOrder;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3779
    :cond_0
    const-string v2, "GPSTimeStamp"

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 3781
    iget v2, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/4 v3, 0x5

    if-eq v2, v3, :cond_1

    iget v2, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    const/16 v3, 0xa

    if-eq v2, v3, :cond_1

    .line 3783
    const-string v2, "ExifInterface"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "GPS Timestamp format is not rational. format="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v4, v0, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->format:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3784
    return-object v1

    .line 3786
    :cond_1
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-static {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->access$500(Landroidx/exifinterface/media/ExifInterface$ExifAttribute;Ljava/nio/ByteOrder;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3787
    .local v2, "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    if-eqz v2, :cond_3

    array-length v3, v2

    const/4 v4, 0x3

    if-eq v3, v4, :cond_2

    goto :goto_0

    .line 3791
    :cond_2
    const-string v1, "%02d:%02d:%02d"

    new-array v3, v4, [Ljava/lang/Object;

    const/4 v4, 0x0

    aget-object v5, v2, v4

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    aget-object v6, v2, v4

    iget-wide v6, v6, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 3792
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    aget-object v5, v2, v4

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    aget-object v6, v2, v4

    iget-wide v6, v6, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 3793
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    aget-object v5, v2, v4

    iget-wide v5, v5, Landroidx/exifinterface/media/ExifInterface$Rational;->numerator:J

    long-to-float v5, v5

    aget-object v6, v2, v4

    iget-wide v6, v6, Landroidx/exifinterface/media/ExifInterface$Rational;->denominator:J

    long-to-float v6, v6

    div-float/2addr v5, v6

    float-to-int v5, v5

    .line 3794
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    .line 3791
    invoke-static {v1, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3788
    :cond_3
    :goto_0
    const-string v3, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Invalid GPS Timestamp array. array="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v2}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3789
    return-object v1

    .line 3797
    .end local v2    # "array":[Landroidx/exifinterface/media/ExifInterface$Rational;
    :cond_4
    :try_start_0
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v2
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    .line 3798
    :catch_0
    move-exception v2

    .line 3799
    .local v2, "e":Ljava/lang/NumberFormatException;
    return-object v1

    .line 3802
    .end local v2    # "e":Ljava/lang/NumberFormatException;
    :cond_5
    return-object v1
.end method

.method public getAttributeDouble(Ljava/lang/String;D)D
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # D

    .line 3835
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3836
    .local v0, "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_0

    .line 3837
    return-wide p2

    .line 3841
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getDoubleValue(Ljava/nio/ByteOrder;)D

    move-result-wide v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v1

    .line 3842
    :catch_0
    move-exception v1

    .line 3843
    .local v1, "e":Ljava/lang/NumberFormatException;
    return-wide p2
.end method

.method public getAttributeInt(Ljava/lang/String;I)I
    .locals 2
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "defaultValue"    # I

    .line 3814
    invoke-direct {p0, p1}, Landroidx/exifinterface/media/ExifInterface;->getExifAttribute(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v0

    .line 3815
    .local v0, "exifAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-nez v0, :cond_0

    .line 3816
    return p2

    .line 3820
    :cond_0
    :try_start_0
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v0, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return v1

    .line 3821
    :catch_0
    move-exception v1

    .line 3822
    .local v1, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public getDateTime()J
    .locals 12
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 4587
    const-string v0, "DateTime"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4588
    .local v0, "dateTimeString":Ljava/lang/String;
    const-wide/16 v1, -0x1

    if-eqz v0, :cond_4

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4589
    invoke-virtual {v3, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/regex/Matcher;->matches()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_2

    .line 4591
    :cond_0
    new-instance v3, Ljava/text/ParsePosition;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4595
    .local v3, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v4, v0, v3}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v4

    .line 4596
    .local v4, "datetime":Ljava/util/Date;
    if-nez v4, :cond_1

    return-wide v1

    .line 4597
    :cond_1
    invoke-virtual {v4}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    .line 4599
    .local v5, "msecs":J
    const-string v7, "SubSecTime"

    invoke-virtual {p0, v7}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1

    .line 4600
    .local v7, "subSecs":Ljava/lang/String;
    if-eqz v7, :cond_3

    .line 4602
    :try_start_1
    invoke-static {v7}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    .line 4603
    .local v8, "sub":J
    :goto_0
    const-wide/16 v10, 0x3e8

    cmp-long v10, v8, v10

    if-lez v10, :cond_2

    .line 4604
    const-wide/16 v10, 0xa

    div-long v10, v8, v10
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    move-wide v8, v10

    goto :goto_0

    .line 4606
    :cond_2
    add-long/2addr v5, v8

    .line 4609
    .end local v8    # "sub":J
    goto :goto_1

    .line 4607
    :catch_0
    move-exception v1

    .line 4611
    :cond_3
    :goto_1
    return-wide v5

    .line 4612
    .end local v4    # "datetime":Ljava/util/Date;
    .end local v5    # "msecs":J
    .end local v7    # "subSecs":Ljava/lang/String;
    :catch_1
    move-exception v4

    .line 4613
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    return-wide v1

    .line 4589
    .end local v3    # "pos":Ljava/text/ParsePosition;
    .end local v4    # "e":Ljava/lang/IllegalArgumentException;
    :cond_4
    :goto_2
    return-wide v1
.end method

.method public getGpsDateTime()J
    .locals 9
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 4624
    const-string v0, "GPSDateStamp"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4625
    .local v0, "date":Ljava/lang/String;
    const-string v1, "GPSTimeStamp"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4626
    .local v1, "time":Ljava/lang/String;
    const-wide/16 v2, -0x1

    if-eqz v0, :cond_2

    if-eqz v1, :cond_2

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4627
    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    sget-object v4, Landroidx/exifinterface/media/ExifInterface;->sNonZeroTimePattern:Ljava/util/regex/Pattern;

    .line 4628
    invoke-virtual {v4, v1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    goto :goto_0

    .line 4632
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v5, 0x20

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4634
    .local v4, "dateTimeString":Ljava/lang/String;
    new-instance v5, Ljava/text/ParsePosition;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Ljava/text/ParsePosition;-><init>(I)V

    .line 4636
    .local v5, "pos":Ljava/text/ParsePosition;
    :try_start_0
    sget-object v6, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    invoke-virtual {v6, v4, v5}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;Ljava/text/ParsePosition;)Ljava/util/Date;

    move-result-object v6

    .line 4637
    .local v6, "datetime":Ljava/util/Date;
    if-nez v6, :cond_1

    return-wide v2

    .line 4638
    :cond_1
    invoke-virtual {v6}, Ljava/util/Date;->getTime()J

    move-result-wide v7
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide v7

    .line 4639
    .end local v6    # "datetime":Ljava/util/Date;
    :catch_0
    move-exception v6

    .line 4640
    .local v6, "e":Ljava/lang/IllegalArgumentException;
    return-wide v2

    .line 4629
    .end local v4    # "dateTimeString":Ljava/lang/String;
    .end local v5    # "pos":Ljava/text/ParsePosition;
    .end local v6    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_0
    return-wide v2
.end method

.method public getLatLong([F)Z
    .locals 4
    .param p1, "output"    # [F
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 4458
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getLatLong()[D

    move-result-object v0

    .line 4459
    .local v0, "latLong":[D
    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4460
    return v1

    .line 4463
    :cond_0
    aget-wide v2, v0, v1

    double-to-float v2, v2

    aput v2, p1, v1

    .line 4464
    const/4 v1, 0x1

    aget-wide v2, v0, v1

    double-to-float v2, v2

    aput v2, p1, v1

    .line 4465
    return v1
.end method

.method public getLatLong()[D
    .locals 12
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4477
    const-string v0, "GPSLatitude"

    invoke-virtual {p0, v0}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 4478
    .local v0, "latValue":Ljava/lang/String;
    const-string v1, "GPSLatitudeRef"

    invoke-virtual {p0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 4479
    .local v1, "latRef":Ljava/lang/String;
    const-string v2, "GPSLongitude"

    invoke-virtual {p0, v2}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 4480
    .local v2, "lngValue":Ljava/lang/String;
    const-string v3, "GPSLongitudeRef"

    invoke-virtual {p0, v3}, Landroidx/exifinterface/media/ExifInterface;->getAttribute(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 4482
    .local v3, "lngRef":Ljava/lang/String;
    if-eqz v0, :cond_0

    if-eqz v1, :cond_0

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    .line 4484
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/4 v6, 0x2

    :try_start_0
    invoke-static {v0, v1}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v7

    .line 4485
    .local v7, "latitude":D
    invoke-static {v2, v3}, Landroidx/exifinterface/media/ExifInterface;->convertRationalLatLonToDouble(Ljava/lang/String;Ljava/lang/String;)D

    move-result-wide v9

    .line 4486
    .local v9, "longitude":D
    new-array v11, v6, [D

    aput-wide v7, v11, v5

    aput-wide v9, v11, v4
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v11

    .line 4487
    .end local v7    # "latitude":D
    .end local v9    # "longitude":D
    :catch_0
    move-exception v7

    .line 4488
    .local v7, "e":Ljava/lang/IllegalArgumentException;
    const-string v8, "ExifInterface"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Latitude/longitude values are not parseable. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "latValue=%s, latRef=%s, lngValue=%s, lngRef=%s"

    const/4 v11, 0x4

    new-array v11, v11, [Ljava/lang/Object;

    aput-object v0, v11, v5

    aput-object v1, v11, v4

    aput-object v2, v11, v6

    const/4 v4, 0x3

    aput-object v3, v11, v4

    .line 4489
    invoke-static {v10, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 4488
    invoke-static {v8, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 4493
    .end local v7    # "e":Ljava/lang/IllegalArgumentException;
    :cond_0
    const/4 v4, 0x0

    return-object v4
.end method

.method public getRotationDegrees()I
    .locals 2

    .line 4140
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4141
    .local v0, "orientation":I
    packed-switch v0, :pswitch_data_0

    .line 4155
    const/4 v1, 0x0

    return v1

    .line 4144
    :pswitch_0
    const/16 v1, 0x5a

    return v1

    .line 4150
    :pswitch_1
    const/16 v1, 0x10e

    return v1

    .line 4147
    :pswitch_2
    const/16 v1, 0xb4

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getThumbnail()[B
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4331
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 4334
    :cond_0
    const/4 v0, 0x0

    return-object v0

    .line 4332
    :cond_1
    :goto_0
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBitmap()Landroid/graphics/Bitmap;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4392
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4393
    return-object v1

    .line 4394
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-nez v0, :cond_1

    .line 4395
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnailBytes()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 4398
    :cond_1
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x6

    const/4 v3, 0x0

    if-eq v0, v2, :cond_5

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x7

    if-ne v0, v2, :cond_2

    goto :goto_1

    .line 4400
    :cond_2
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v2, 0x1

    if-ne v0, v2, :cond_4

    .line 4401
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    array-length v0, v0

    const/4 v4, 0x3

    div-int/2addr v0, v4

    new-array v0, v0, [I

    .line 4402
    .local v0, "rgbValues":[I
    const/4 v5, 0x0

    .line 4403
    .local v5, "alpha":B
    nop

    .local v3, "i":I
    :goto_0
    array-length v6, v0

    if-ge v3, v6, :cond_3

    .line 4404
    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    mul-int v7, v4, v3

    aget-byte v6, v6, v7

    shl-int/lit8 v6, v6, 0x10

    add-int/2addr v6, v5

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    mul-int v8, v4, v3

    add-int/2addr v8, v2

    aget-byte v7, v7, v8

    shl-int/lit8 v7, v7, 0x8

    add-int/2addr v6, v7

    iget-object v7, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    mul-int v8, v4, v3

    add-int/lit8 v8, v8, 0x2

    aget-byte v7, v7, v8

    add-int/2addr v6, v7

    aput v6, v0, v3

    .line 4403
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 4408
    .end local v3    # "i":I
    :cond_3
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    const-string v4, "ImageLength"

    .line 4409
    invoke-virtual {v2, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4410
    .local v2, "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v3, v4, v3

    const-string v4, "ImageWidth"

    .line 4411
    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    .line 4412
    .local v3, "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    if-eqz v2, :cond_4

    if-eqz v3, :cond_4

    .line 4413
    iget-object v1, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v2, v1}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v1

    .line 4414
    .local v1, "imageLength":I
    iget-object v4, p0, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    invoke-virtual {v3, v4}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->getIntValue(Ljava/nio/ByteOrder;)I

    move-result v4

    .line 4415
    .local v4, "imageWidth":I
    sget-object v6, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v0, v4, v1, v6}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v6

    return-object v6

    .line 4419
    .end local v0    # "rgbValues":[I
    .end local v1    # "imageLength":I
    .end local v2    # "imageLengthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v3    # "imageWidthAttribute":Landroidx/exifinterface/media/ExifInterface$ExifAttribute;
    .end local v4    # "imageWidth":I
    .end local v5    # "alpha":B
    :cond_4
    return-object v1

    .line 4399
    :cond_5
    :goto_1
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    iget v1, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    invoke-static {v0, v3, v1}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public getThumbnailBytes()[B
    .locals 6
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4343
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 4344
    return-object v1

    .line 4346
    :cond_0
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    if-eqz v0, :cond_1

    .line 4347
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    return-object v0

    .line 4351
    :cond_1
    move-object v0, v1

    .line 4353
    .local v0, "in":Ljava/io/InputStream;
    :try_start_0
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    if-eqz v2, :cond_3

    .line 4354
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mAssetInputStream:Landroid/content/res/AssetManager$AssetInputStream;

    move-object v0, v2

    .line 4355
    invoke-virtual {v0}, Ljava/io/InputStream;->markSupported()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4356
    invoke-virtual {v0}, Ljava/io/InputStream;->reset()V

    goto :goto_0

    .line 4358
    :cond_2
    const-string v2, "ExifInterface"

    const-string v3, "Cannot read thumbnail from inputstream without mark/reset support"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4359
    nop

    .line 4381
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v1

    .line 4361
    :cond_3
    :try_start_1
    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 4362
    new-instance v2, Ljava/io/FileInputStream;

    iget-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    move-object v0, v2

    .line 4364
    :cond_4
    :goto_0
    if-eqz v0, :cond_7

    .line 4368
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Ljava/io/InputStream;->skip(J)J

    move-result-wide v2

    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v4, v4

    cmp-long v2, v2, v4

    if-nez v2, :cond_6

    .line 4371
    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    new-array v2, v2, [B

    .line 4372
    .local v2, "buffer":[B
    invoke-virtual {v0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    iget v4, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    if-ne v3, v4, :cond_5

    .line 4375
    iput-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 4376
    nop

    .line 4381
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    return-object v2

    .line 4373
    :cond_5
    :try_start_2
    new-instance v3, Ljava/io/IOException;

    const-string v4, "Corrupted image"

    invoke-direct {v3, v4}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 4369
    .end local v2    # "buffer":[B
    :cond_6
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Corrupted image"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4366
    :cond_7
    new-instance v2, Ljava/io/FileNotFoundException;

    invoke-direct {v2}, Ljava/io/FileNotFoundException;-><init>()V

    throw v2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 4381
    :catchall_0
    move-exception v1

    goto :goto_1

    .line 4377
    :catch_0
    move-exception v2

    .line 4379
    .local v2, "e":Ljava/io/IOException;
    :try_start_3
    const-string v3, "ExifInterface"

    const-string v4, "Encountered exception while getting thumbnail"

    invoke-static {v3, v4, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 4381
    .end local v2    # "e":Ljava/io/IOException;
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4382
    nop

    .line 4383
    return-object v1

    .line 4381
    :goto_1
    invoke-static {v0}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    throw v1
.end method

.method public getThumbnailRange()[J
    .locals 4
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 4439
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-nez v0, :cond_0

    .line 4440
    const/4 v0, 0x0

    return-object v0

    .line 4443
    :cond_0
    const/4 v0, 0x2

    new-array v0, v0, [J

    .line 4444
    .local v0, "range":[J
    const/4 v1, 0x0

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailOffset:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 4445
    const/4 v1, 0x1

    iget v2, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailLength:I

    int-to-long v2, v2

    aput-wide v2, v0, v1

    .line 4447
    return-object v0
.end method

.method public hasThumbnail()Z
    .locals 1

    .line 4320
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    return v0
.end method

.method public isFlipped()Z
    .locals 3

    .line 4116
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4117
    .local v0, "orientation":I
    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-eq v0, v2, :cond_0

    packed-switch v0, :pswitch_data_0

    .line 4124
    const/4 v1, 0x0

    return v1

    .line 4122
    :cond_0
    :pswitch_0
    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public isThumbnailCompressed()Z
    .locals 2

    .line 4427
    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailCompression:I

    const/4 v1, 0x7

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public resetOrientation()V
    .locals 2

    .line 3998
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 3999
    return-void
.end method

.method public rotate(I)V
    .locals 5
    .param p1, "degree"    # I

    .line 4008
    rem-int/lit8 v0, p1, 0x5a

    if-nez v0, :cond_4

    .line 4012
    const-string v0, "Orientation"

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I

    move-result v0

    .line 4015
    .local v0, "currentOrientation":I
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x4

    if-eqz v1, :cond_1

    .line 4016
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4017
    .local v1, "currentIndex":I
    div-int/lit8 v4, p1, 0x5a

    add-int/2addr v4, v1

    rem-int/2addr v4, v3

    .line 4018
    .local v4, "newIndex":I
    if-gez v4, :cond_0

    move v2, v3

    nop

    :cond_0
    add-int/2addr v4, v2

    .line 4019
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->ROTATION_ORDER:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    .end local v1    # "currentIndex":I
    .end local v4    # "newIndex":I
    .local v2, "resultOrientation":I
    :goto_0
    goto :goto_1

    .line 4020
    .end local v2    # "resultOrientation":I
    :cond_1
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 4021
    sget-object v1, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    .line 4022
    .restart local v1    # "currentIndex":I
    div-int/lit8 v4, p1, 0x5a

    add-int/2addr v4, v1

    rem-int/2addr v4, v3

    .line 4023
    .restart local v4    # "newIndex":I
    if-gez v4, :cond_2

    move v2, v3

    nop

    :cond_2
    add-int/2addr v4, v2

    .line 4024
    sget-object v2, Landroidx/exifinterface/media/ExifInterface;->FLIPPED_ROTATION_ORDER:Ljava/util/List;

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0

    .line 4026
    .end local v1    # "currentIndex":I
    .end local v4    # "newIndex":I
    :cond_3
    nop

    .restart local v2    # "resultOrientation":I
    :goto_1
    move v1, v2

    .line 4029
    .end local v2    # "resultOrientation":I
    .local v1, "resultOrientation":I
    const-string v2, "Orientation"

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4030
    return-void

    .line 4009
    .end local v0    # "currentOrientation":I
    .end local v1    # "resultOrientation":I
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "degree should be a multiple of 90"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public saveAttributes()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 4282
    iget-boolean v0, p0, Landroidx/exifinterface/media/ExifInterface;->mIsSupportedFile:Z

    if-eqz v0, :cond_2

    iget v0, p0, Landroidx/exifinterface/media/ExifInterface;->mMimeType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_2

    .line 4285
    iget-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 4291
    invoke-virtual {p0}, Landroidx/exifinterface/media/ExifInterface;->getThumbnail()[B

    move-result-object v0

    iput-object v0, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 4293
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".tmp"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4294
    .local v0, "tempFile":Ljava/io/File;
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 4295
    .local v1, "originalFile":Ljava/io/File;
    invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4299
    const/4 v2, 0x0

    .line 4300
    .local v2, "in":Ljava/io/FileInputStream;
    const/4 v3, 0x0

    move-object v4, v3

    .line 4303
    .local v4, "out":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    move-object v2, v5

    .line 4304
    new-instance v5, Ljava/io/FileOutputStream;

    iget-object v6, p0, Landroidx/exifinterface/media/ExifInterface;->mFilename:Ljava/lang/String;

    invoke-direct {v5, v6}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    move-object v4, v5

    .line 4305
    invoke-direct {p0, v2, v4}, Landroidx/exifinterface/media/ExifInterface;->saveJpegAttributes(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4307
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4308
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4309
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    .line 4310
    nop

    .line 4313
    iput-object v3, p0, Landroidx/exifinterface/media/ExifInterface;->mThumbnailBytes:[B

    .line 4314
    return-void

    .line 4307
    :catchall_0
    move-exception v3

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4308
    invoke-static {v4}, Landroidx/exifinterface/media/ExifInterface;->closeQuietly(Ljava/io/Closeable;)V

    .line 4309
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    throw v3

    .line 4296
    .end local v2    # "in":Ljava/io/FileInputStream;
    .end local v4    # "out":Ljava/io/FileOutputStream;
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not rename to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 4286
    .end local v0    # "tempFile":Ljava/io/File;
    .end local v1    # "originalFile":Ljava/io/File;
    :cond_1
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface does not support saving attributes for the current input."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4283
    :cond_2
    new-instance v0, Ljava/io/IOException;

    const-string v1, "ExifInterface only supports saving attributes on JPEG formats."

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setAltitude(D)V
    .locals 6
    .param p1, "altitude"    # D

    .line 4562
    const-wide/16 v0, 0x0

    cmpl-double v0, p1, v0

    if-ltz v0, :cond_0

    const-string v0, "0"

    goto :goto_0

    :cond_0
    const-string v0, "1"

    .line 4563
    .local v0, "ref":Ljava/lang/String;
    :goto_0
    const-string v1, "GPSAltitude"

    new-instance v2, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    const/4 v5, 0x0

    invoke-direct {v2, v3, v4, v5}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(DLandroidx/exifinterface/media/ExifInterface$1;)V

    invoke-virtual {v2}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4564
    const-string v1, "GPSAltitudeRef"

    invoke-virtual {p0, v1, v0}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4565
    return-void
.end method

.method public setAttribute(Ljava/lang/String;Ljava/lang/String;)V
    .locals 24
    .param p1, "tag"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "value"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v1, p0

    .line 3854
    move-object/from16 v2, p2

    const-string v0, "ISOSpeedRatings"

    move-object/from16 v3, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3859
    const-string v0, "PhotographicSensitivity"

    .line 3862
    .end local p1    # "tag":Ljava/lang/String;
    .local v0, "tag":Ljava/lang/String;
    move-object v3, v0

    .end local v0    # "tag":Ljava/lang/String;
    .local v3, "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->sTagSetForCompatibility:Ljava/util/HashSet;

    invoke-virtual {v5, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 3863
    const-string v5, "GPSTimeStamp"

    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3864
    sget-object v5, Landroidx/exifinterface/media/ExifInterface;->sGpsTimestampPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v5, v2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 3865
    .local v5, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v6

    if-nez v6, :cond_1

    .line 3866
    const-string v0, "ExifInterface"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3867
    return-void

    .line 3869
    :cond_1
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1,"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x3

    .line 3870
    invoke-virtual {v5, v7}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, "/1"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 3871
    .end local v5    # "m":Ljava/util/regex/Matcher;
    .end local p2    # "value":Ljava/lang/String;
    .local v2, "value":Ljava/lang/String;
    goto :goto_0

    .line 3873
    .end local v2    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :cond_2
    :try_start_0
    invoke-static/range {p2 .. p2}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .line 3874
    .local v5, "doubleValue":D
    new-instance v7, Landroidx/exifinterface/media/ExifInterface$Rational;

    const/4 v8, 0x0

    invoke-direct {v7, v5, v6, v8}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(DLandroidx/exifinterface/media/ExifInterface$1;)V

    invoke-virtual {v7}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v7
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v2, v7

    .line 3878
    .end local v5    # "doubleValue":D
    .end local p2    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    goto :goto_0

    .line 3875
    .end local v2    # "value":Ljava/lang/String;
    .restart local p2    # "value":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 3876
    .local v0, "e":Ljava/lang/NumberFormatException;
    const-string v4, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Invalid value for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " : "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3877
    return-void

    .line 3882
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local p2    # "value":Ljava/lang/String;
    .restart local v2    # "value":Ljava/lang/String;
    :cond_3
    :goto_0
    const/4 v5, 0x0

    move v6, v5

    .local v6, "i":I
    :goto_1
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->EXIF_TAGS:[[Landroidx/exifinterface/media/ExifInterface$ExifTag;

    array-length v7, v7

    if-ge v6, v7, :cond_15

    .line 3883
    const/4 v7, 0x4

    if-ne v6, v7, :cond_4

    iget-boolean v7, v1, Landroidx/exifinterface/media/ExifInterface;->mHasThumbnail:Z

    if-nez v7, :cond_4

    .line 3884
    nop

    .line 3882
    .end local v6    # "i":I
    .local v22, "i":I
    :goto_2
    move/from16 v19, v5

    move/from16 v22, v6

    goto/16 :goto_f

    .line 3886
    .end local v22    # "i":I
    .restart local v6    # "i":I
    :cond_4
    sget-object v7, Landroidx/exifinterface/media/ExifInterface;->sExifTagMapsForWriting:[Ljava/util/HashMap;

    aget-object v7, v7, v6

    invoke-virtual {v7, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;

    .line 3887
    .local v7, "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    if-eqz v7, :cond_14

    .line 3888
    if-nez v2, :cond_5

    .line 3889
    iget-object v8, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v8, v8, v6

    invoke-virtual {v8, v3}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3890
    goto :goto_2

    .line 3892
    :cond_5
    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface;->guessDataFormat(Ljava/lang/String;)Landroid/util/Pair;

    move-result-object v8

    .line 3894
    .local v8, "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    const/4 v11, -0x1

    if-eq v9, v10, :cond_d

    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_6

    goto/16 :goto_6

    .line 3896
    :cond_6
    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-eq v9, v11, :cond_8

    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v10, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-eq v9, v10, :cond_7

    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    iget-object v10, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v10, Ljava/lang/Integer;

    .line 3897
    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    if-ne v9, v10, :cond_8

    .line 3898
    :cond_7
    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    goto/16 :goto_7

    .line 3899
    :cond_8
    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-eq v9, v4, :cond_c

    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    const/4 v10, 0x7

    if-eq v9, v10, :cond_c

    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    if-ne v9, v0, :cond_9

    goto/16 :goto_5

    .line 3904
    :cond_9
    const-string v9, "ExifInterface"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Given tag ("

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, ") value didn\'t match with one of expected "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, "formats: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v13, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    aget-object v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v12, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    if-ne v12, v11, :cond_a

    const-string v12, ""

    goto :goto_3

    :cond_a
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, ", "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget v14, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->secondaryFormat:I

    aget-object v13, v13, v14

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    :goto_3
    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " (guess: "

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v13, v8, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    .line 3908
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v10, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v12, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v12, Ljava/lang/Integer;

    invoke-virtual {v12}, Ljava/lang/Integer;->intValue()I

    move-result v12

    if-ne v12, v11, :cond_b

    const-string v11, ""

    goto :goto_4

    :cond_b
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v12, Landroidx/exifinterface/media/ExifInterface;->IFD_FORMAT_NAMES:[Ljava/lang/String;

    iget-object v13, v8, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v13, Ljava/lang/Integer;

    .line 3909
    invoke-virtual {v13}, Ljava/lang/Integer;->intValue()I

    move-result v13

    aget-object v12, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    :goto_4
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v11, ")"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    .line 3904
    invoke-static {v9, v10}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3910
    goto/16 :goto_2

    .line 3902
    :cond_c
    :goto_5
    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    goto :goto_7

    .line 3895
    :cond_d
    :goto_6
    iget v9, v7, Landroidx/exifinterface/media/ExifInterface$ExifTag;->primaryFormat:I

    .line 3910
    .local v9, "dataFormat":I
    :goto_7
    nop

    .line 3912
    packed-switch v9, :pswitch_data_0

    .line 3987
    :pswitch_0
    move/from16 v19, v5

    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    const-string v0, "ExifInterface"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Data format isn\'t one of expected formats: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 3988
    goto/16 :goto_f

    .line 3977
    .end local v22    # "i":I
    .restart local v6    # "i":I
    :pswitch_1
    const-string v10, ","

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 3978
    .local v10, "values":[Ljava/lang/String;
    array-length v11, v10

    new-array v11, v11, [D

    .line 3979
    .local v11, "doubleArray":[D
    move v12, v5

    .local v12, "j":I
    :goto_8
    array-length v13, v10

    if-ge v12, v13, :cond_e

    .line 3980
    aget-object v13, v10, v12

    invoke-static {v13}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v13

    aput-wide v13, v11, v12

    .line 3979
    add-int/lit8 v12, v12, 0x1

    goto :goto_8

    .line 3982
    .end local v12    # "j":I
    :cond_e
    iget-object v12, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v12, v12, v6

    iget-object v13, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3983
    invoke-static {v11, v13}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createDouble([DLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v13

    .line 3982
    invoke-virtual {v12, v3, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3984
    goto/16 :goto_2

    .line 3965
    .end local v10    # "values":[Ljava/lang/String;
    .end local v11    # "doubleArray":[D
    :pswitch_2
    const-string v10, ","

    invoke-virtual {v2, v10, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 3966
    .restart local v10    # "values":[Ljava/lang/String;
    array-length v12, v10

    new-array v12, v12, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3967
    .local v12, "rationalArray":[Landroidx/exifinterface/media/ExifInterface$Rational;
    move v13, v5

    .local v13, "j":I
    :goto_9
    array-length v14, v10

    if-ge v13, v14, :cond_f

    .line 3968
    aget-object v14, v10, v13

    const-string v15, "/"

    invoke-virtual {v14, v15, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v14

    .line 3969
    .local v14, "numbers":[Ljava/lang/String;
    new-instance v21, Landroidx/exifinterface/media/ExifInterface$Rational;

    aget-object v15, v14, v5

    move/from16 v22, v6

    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v5

    .end local v6    # "i":I
    .restart local v22    # "i":I
    double-to-long v5, v5

    aget-object v15, v14, v4

    .line 3970
    invoke-static {v15}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v0, v0

    const/16 v20, 0x0

    move-object/from16 v15, v21

    move-wide/from16 v16, v5

    move-wide/from16 v18, v0

    invoke-direct/range {v15 .. v20}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v21, v12, v13

    .line 3967
    .end local v14    # "numbers":[Ljava/lang/String;
    add-int/lit8 v13, v13, 0x1

    move/from16 v6, v22

    const/4 v0, 0x2

    move-object/from16 v1, p0

    const/4 v5, 0x0

    goto :goto_9

    .line 3972
    .end local v13    # "j":I
    .end local v22    # "i":I
    .restart local v6    # "i":I
    :cond_f
    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    move-object/from16 v1, p0

    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v22

    iget-object v5, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3973
    invoke-static {v12, v5}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSRational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    .line 3972
    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3974
    goto :goto_b

    .line 3933
    .end local v10    # "values":[Ljava/lang/String;
    .end local v12    # "rationalArray":[Landroidx/exifinterface/media/ExifInterface$Rational;
    .end local v22    # "i":I
    .restart local v6    # "i":I
    :pswitch_3
    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    const-string v0, ","

    invoke-virtual {v2, v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3934
    .local v0, "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 3935
    .local v5, "intArray":[I
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_a
    array-length v10, v0

    if-ge v6, v10, :cond_10

    .line 3936
    aget-object v10, v0, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v5, v6

    .line 3935
    add-int/lit8 v6, v6, 0x1

    goto :goto_a

    .line 3938
    .end local v6    # "j":I
    :cond_10
    iget-object v6, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v22

    iget-object v10, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3939
    invoke-static {v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createSLong([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 3938
    invoke-virtual {v6, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3940
    nop

    .line 3882
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v7    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v8    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "dataFormat":I
    :goto_b
    const/16 v19, 0x0

    goto/16 :goto_f

    .line 3953
    .end local v22    # "i":I
    .local v6, "i":I
    .restart local v7    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .restart local v8    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .restart local v9    # "dataFormat":I
    :pswitch_4
    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    const-string v0, ","

    invoke-virtual {v2, v0, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3954
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [Landroidx/exifinterface/media/ExifInterface$Rational;

    .line 3955
    .local v5, "rationalArray":[Landroidx/exifinterface/media/ExifInterface$Rational;
    const/4 v6, 0x0

    .local v6, "j":I
    :goto_c
    array-length v10, v0

    if-ge v6, v10, :cond_11

    .line 3956
    aget-object v10, v0, v6

    const-string v12, "/"

    invoke-virtual {v10, v12, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v10

    .line 3957
    .local v10, "numbers":[Ljava/lang/String;
    new-instance v18, Landroidx/exifinterface/media/ExifInterface$Rational;

    const/16 v19, 0x0

    aget-object v12, v10, v19

    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v12

    double-to-long v13, v12

    aget-object v12, v10, v4

    .line 3958
    invoke-static {v12}, Ljava/lang/Double;->parseDouble(Ljava/lang/String;)D

    move-result-wide v11

    double-to-long v11, v11

    const/16 v17, 0x0

    move-wide v15, v11

    move-object/from16 v12, v18

    invoke-direct/range {v12 .. v17}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(JJLandroidx/exifinterface/media/ExifInterface$1;)V

    aput-object v18, v5, v6

    .line 3955
    .end local v10    # "numbers":[Ljava/lang/String;
    add-int/lit8 v6, v6, 0x1

    const/4 v11, -0x1

    goto :goto_c

    .line 3960
    .end local v6    # "j":I
    :cond_11
    const/16 v19, 0x0

    iget-object v6, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v22

    iget-object v10, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3961
    invoke-static {v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createURational([Landroidx/exifinterface/media/ExifInterface$Rational;Ljava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 3960
    invoke-virtual {v6, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3962
    goto/16 :goto_f

    .line 3943
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "rationalArray":[Landroidx/exifinterface/media/ExifInterface$Rational;
    .end local v22    # "i":I
    .local v6, "i":I
    :pswitch_5
    move/from16 v19, v5

    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    const-string v0, ","

    const/4 v5, -0x1

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3944
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [J

    .line 3945
    .local v5, "longArray":[J
    move/from16 v6, v19

    .local v6, "j":I
    :goto_d
    array-length v10, v0

    if-ge v6, v10, :cond_12

    .line 3946
    aget-object v10, v0, v6

    invoke-static {v10}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v10

    aput-wide v10, v5, v6

    .line 3945
    add-int/lit8 v6, v6, 0x1

    goto :goto_d

    .line 3948
    .end local v6    # "j":I
    :cond_12
    iget-object v6, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v22

    iget-object v10, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3949
    invoke-static {v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createULong([JLjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 3948
    invoke-virtual {v6, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3950
    goto :goto_f

    .line 3923
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "longArray":[J
    .end local v22    # "i":I
    .local v6, "i":I
    :pswitch_6
    move/from16 v19, v5

    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    const-string v0, ","

    const/4 v5, -0x1

    invoke-virtual {v2, v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 3924
    .restart local v0    # "values":[Ljava/lang/String;
    array-length v5, v0

    new-array v5, v5, [I

    .line 3925
    .local v5, "intArray":[I
    move/from16 v6, v19

    .local v6, "j":I
    :goto_e
    array-length v10, v0

    if-ge v6, v10, :cond_13

    .line 3926
    aget-object v10, v0, v6

    invoke-static {v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v10

    aput v10, v5, v6

    .line 3925
    add-int/lit8 v6, v6, 0x1

    goto :goto_e

    .line 3928
    .end local v6    # "j":I
    :cond_13
    iget-object v6, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v6, v6, v22

    iget-object v10, v1, Landroidx/exifinterface/media/ExifInterface;->mExifByteOrder:Ljava/nio/ByteOrder;

    .line 3929
    invoke-static {v5, v10}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createUShort([ILjava/nio/ByteOrder;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v10

    .line 3928
    invoke-virtual {v6, v3, v10}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3930
    goto :goto_f

    .line 3919
    .end local v0    # "values":[Ljava/lang/String;
    .end local v5    # "intArray":[I
    .end local v22    # "i":I
    .local v6, "i":I
    :pswitch_7
    move/from16 v19, v5

    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v22

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createString(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3920
    goto :goto_f

    .line 3914
    .end local v22    # "i":I
    .restart local v6    # "i":I
    :pswitch_8
    move/from16 v19, v5

    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    iget-object v0, v1, Landroidx/exifinterface/media/ExifInterface;->mAttributes:[Ljava/util/HashMap;

    aget-object v0, v0, v22

    invoke-static {v2}, Landroidx/exifinterface/media/ExifInterface$ExifAttribute;->createByte(Ljava/lang/String;)Landroidx/exifinterface/media/ExifInterface$ExifAttribute;

    move-result-object v5

    invoke-virtual {v0, v3, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3915
    goto :goto_f

    .line 3882
    .end local v7    # "exifTag":Landroidx/exifinterface/media/ExifInterface$ExifTag;
    .end local v8    # "guess":Landroid/util/Pair;, "Landroid/util/Pair<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    .end local v9    # "dataFormat":I
    .end local v22    # "i":I
    .restart local v6    # "i":I
    :cond_14
    move/from16 v19, v5

    move/from16 v22, v6

    .end local v6    # "i":I
    .restart local v22    # "i":I
    :goto_f
    add-int/lit8 v6, v22, 0x1

    .end local v22    # "i":I
    .restart local v6    # "i":I
    move/from16 v5, v19

    const/4 v0, 0x2

    goto/16 :goto_1

    .line 3992
    .end local v6    # "i":I
    :cond_15
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_7
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public setDateTime(J)V
    .locals 5
    .param p1, "timeStamp"    # J
    .annotation build Landroidx/annotation/RestrictTo;
        value = {
            .enum Landroidx/annotation/RestrictTo$Scope;->LIBRARY:Landroidx/annotation/RestrictTo$Scope;
        }
    .end annotation

    .line 4575
    const-wide/16 v0, 0x3e8

    rem-long v0, p1, v0

    .line 4576
    .local v0, "sub":J
    const-string v2, "DateTime"

    sget-object v3, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v3, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4577
    const-string v2, "SubSecTime"

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4578
    return-void
.end method

.method public setGpsInfo(Landroid/location/Location;)V
    .locals 6
    .param p1, "location"    # Landroid/location/Location;

    .line 4503
    if-nez p1, :cond_0

    .line 4504
    return-void

    .line 4506
    :cond_0
    const-string v0, "GPSProcessingMethod"

    invoke-virtual {p1}, Landroid/location/Location;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4507
    invoke-virtual {p1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {p0, v0, v1, v2, v3}, Landroidx/exifinterface/media/ExifInterface;->setLatLong(DD)V

    .line 4508
    invoke-virtual {p1}, Landroid/location/Location;->getAltitude()D

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAltitude(D)V

    .line 4510
    const-string v0, "GPSSpeedRef"

    const-string v1, "K"

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4511
    const-string v0, "GPSSpeed"

    new-instance v1, Landroidx/exifinterface/media/ExifInterface$Rational;

    invoke-virtual {p1}, Landroid/location/Location;->getSpeed()F

    move-result v2

    sget-object v3, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1

    .line 4512
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v3

    long-to-float v3, v3

    mul-float/2addr v2, v3

    const/high16 v3, 0x447a0000    # 1000.0f

    div-float/2addr v2, v3

    float-to-double v2, v2

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Landroidx/exifinterface/media/ExifInterface$Rational;-><init>(DLandroidx/exifinterface/media/ExifInterface$1;)V

    invoke-virtual {v1}, Landroidx/exifinterface/media/ExifInterface$Rational;->toString()Ljava/lang/String;

    move-result-object v1

    .line 4511
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4513
    sget-object v0, Landroidx/exifinterface/media/ExifInterface;->sFormatter:Ljava/text/SimpleDateFormat;

    new-instance v1, Ljava/util/Date;

    invoke-virtual {p1}, Landroid/location/Location;->getTime()J

    move-result-wide v2

    invoke-direct {v1, v2, v3}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\\s+"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v0

    .line 4514
    .local v0, "dateTime":[Ljava/lang/String;
    const-string v1, "GPSDateStamp"

    const/4 v2, 0x0

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4515
    const-string v1, "GPSTimeStamp"

    const/4 v2, 0x1

    aget-object v2, v0, v2

    invoke-virtual {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4516
    return-void
.end method

.method public setLatLong(DD)V
    .locals 5
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .line 4529
    const-wide v0, -0x3fa9800000000000L    # -90.0

    cmpg-double v0, p1, v0

    if-ltz v0, :cond_3

    const-wide v0, 0x4056800000000000L    # 90.0

    cmpl-double v0, p1, v0

    if-gtz v0, :cond_3

    invoke-static {p1, p2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_3

    .line 4532
    const-wide v0, -0x3f99800000000000L    # -180.0

    cmpg-double v0, p3, v0

    if-ltz v0, :cond_2

    const-wide v0, 0x4066800000000000L    # 180.0

    cmpl-double v0, p3, v0

    if-gtz v0, :cond_2

    invoke-static {p3, p4}, Ljava/lang/Double;->isNaN(D)Z

    move-result v0

    if-nez v0, :cond_2

    .line 4535
    const-string v0, "GPSLatitudeRef"

    const-wide/16 v1, 0x0

    cmpl-double v3, p1, v1

    if-ltz v3, :cond_0

    const-string v3, "N"

    goto :goto_0

    :cond_0
    const-string v3, "S"

    :goto_0
    invoke-virtual {p0, v0, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4536
    const-string v0, "GPSLatitude"

    invoke-static {p1, p2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Landroidx/exifinterface/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v0, v3}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4537
    const-string v0, "GPSLongitudeRef"

    cmpl-double v1, p3, v1

    if-ltz v1, :cond_1

    const-string v1, "E"

    goto :goto_1

    :cond_1
    const-string v1, "W"

    :goto_1
    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4538
    const-string v0, "GPSLongitude"

    invoke-static {p3, p4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    invoke-direct {p0, v1, v2}, Landroidx/exifinterface/media/ExifInterface;->convertDecimalDegree(D)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Landroidx/exifinterface/media/ExifInterface;->setAttribute(Ljava/lang/String;Ljava/lang/String;)V

    .line 4539
    return-void

    .line 4533
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Longitude value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " is not valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4530
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Latitude value "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, " is not valid."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
