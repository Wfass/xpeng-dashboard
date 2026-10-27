.class public final Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;
.super Ljava/lang/Object;
.source "VehicleVendorPermission.java"


# static fields
.field public static final PERMISSION_DEFAULT:I = 0x0

.field public static final PERMISSION_GET_VENDOR_CATEGORY_1:I = 0x11000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_10:I = 0xa1000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_2:I = 0x21000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_3:I = 0x31000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_4:I = 0x41000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_5:I = 0x51000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_6:I = 0x61000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_7:I = 0x71000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_8:I = 0x81000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_9:I = 0x91000

.field public static final PERMISSION_GET_VENDOR_CATEGORY_DOOR:I = 0x4

.field public static final PERMISSION_GET_VENDOR_CATEGORY_ENGINE:I = 0xc

.field public static final PERMISSION_GET_VENDOR_CATEGORY_HVAC:I = 0xe

.field public static final PERMISSION_GET_VENDOR_CATEGORY_INFO:I = 0xa

.field public static final PERMISSION_GET_VENDOR_CATEGORY_LIGHT:I = 0x10

.field public static final PERMISSION_GET_VENDOR_CATEGORY_MIRROR:I = 0x8

.field public static final PERMISSION_GET_VENDOR_CATEGORY_SEAT:I = 0x6

.field public static final PERMISSION_GET_VENDOR_CATEGORY_WINDOW:I = 0x2

.field public static final PERMISSION_NOT_ACCESSIBLE:I = -0x10000000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_1:I = 0x10000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_10:I = 0xa0000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_2:I = 0x20000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_3:I = 0x30000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_4:I = 0x40000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_5:I = 0x50000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_6:I = 0x60000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_7:I = 0x70000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_8:I = 0x80000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_9:I = 0x90000

.field public static final PERMISSION_SET_VENDOR_CATEGORY_DOOR:I = 0x3

.field public static final PERMISSION_SET_VENDOR_CATEGORY_ENGINE:I = 0xb

.field public static final PERMISSION_SET_VENDOR_CATEGORY_HVAC:I = 0xd

.field public static final PERMISSION_SET_VENDOR_CATEGORY_INFO:I = 0x9

.field public static final PERMISSION_SET_VENDOR_CATEGORY_LIGHT:I = 0xf

.field public static final PERMISSION_SET_VENDOR_CATEGORY_MIRROR:I = 0x7

.field public static final PERMISSION_SET_VENDOR_CATEGORY_SEAT:I = 0x5

.field public static final PERMISSION_SET_VENDOR_CATEGORY_WINDOW:I = 0x1


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;I",
            "Ljava/lang/String;",
            "II)I"
        }
    .end annotation

    and-int/2addr p1, p3

    if-ne p1, p3, :cond_0

    .line 163
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    or-int/2addr p4, p3

    :cond_0
    return p4
.end method

.method public static final dumpBitfield(I)Ljava/lang/String;
    .locals 4

    .line 170
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const-string v1, "PERMISSION_DEFAULT"

    .line 172
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const-string v1, "PERMISSION_SET_VENDOR_CATEGORY_WINDOW"

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 173
    invoke-static {v0, p0, v1, v2, v3}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_WINDOW"

    const/4 v3, 0x2

    .line 174
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_DOOR"

    const/4 v3, 0x3

    .line 175
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_DOOR"

    const/4 v3, 0x4

    .line 176
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_SEAT"

    const/4 v3, 0x5

    .line 177
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_SEAT"

    const/4 v3, 0x6

    .line 178
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_MIRROR"

    const/4 v3, 0x7

    .line 179
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_MIRROR"

    const/16 v3, 0x8

    .line 180
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_INFO"

    const/16 v3, 0x9

    .line 181
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_INFO"

    const/16 v3, 0xa

    .line 182
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_ENGINE"

    const/16 v3, 0xb

    .line 183
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_ENGINE"

    const/16 v3, 0xc

    .line 184
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_HVAC"

    const/16 v3, 0xd

    .line 185
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_HVAC"

    const/16 v3, 0xe

    .line 186
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_LIGHT"

    const/16 v3, 0xf

    .line 187
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_LIGHT"

    const/16 v3, 0x10

    .line 188
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_1"

    const/high16 v3, 0x10000

    .line 189
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_1"

    const v3, 0x11000

    .line 190
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_2"

    const/high16 v3, 0x20000

    .line 191
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_2"

    const v3, 0x21000

    .line 192
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_3"

    const/high16 v3, 0x30000

    .line 193
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_3"

    const v3, 0x31000

    .line 194
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_4"

    const/high16 v3, 0x40000

    .line 195
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_4"

    const v3, 0x41000

    .line 196
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_5"

    const/high16 v3, 0x50000

    .line 197
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_5"

    const v3, 0x51000

    .line 198
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_6"

    const/high16 v3, 0x60000

    .line 199
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_6"

    const v3, 0x61000

    .line 200
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_7"

    const/high16 v3, 0x70000

    .line 201
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_7"

    const v3, 0x71000

    .line 202
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_8"

    const/high16 v3, 0x80000

    .line 203
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_8"

    const v3, 0x81000

    .line 204
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_9"

    const/high16 v3, 0x90000

    .line 205
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_9"

    const v3, 0x91000

    .line 206
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_SET_VENDOR_CATEGORY_10"

    const/high16 v3, 0xa0000

    .line 207
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_GET_VENDOR_CATEGORY_10"

    const v3, 0xa1000

    .line 208
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    const-string v2, "PERMISSION_NOT_ACCESSIBLE"

    const/high16 v3, -0x10000000

    .line 209
    invoke-static {v0, p0, v2, v3, v1}, Landroid/hardware/automotive/vehicle/V2_0/VehicleVendorPermission;->addDumpBitfield(Ljava/util/ArrayList;ILjava/lang/String;II)I

    move-result v1

    if-eq p0, v1, :cond_0

    .line 211
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    not-int v1, v1

    and-int/2addr p0, v1

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    const-string p0, " | "

    .line 213
    invoke-static {p0, v0}, Ljava/lang/String;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final toString(I)Ljava/lang/String;
    .locals 2

    if-nez p0, :cond_0

    const-string p0, "PERMISSION_DEFAULT"

    return-object p0

    :cond_0
    const/4 v0, 0x1

    if-ne p0, v0, :cond_1

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_WINDOW"

    return-object p0

    :cond_1
    const/4 v0, 0x2

    if-ne p0, v0, :cond_2

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_WINDOW"

    return-object p0

    :cond_2
    const/4 v0, 0x3

    if-ne p0, v0, :cond_3

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_DOOR"

    return-object p0

    :cond_3
    const/4 v0, 0x4

    if-ne p0, v0, :cond_4

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_DOOR"

    return-object p0

    :cond_4
    const/4 v0, 0x5

    if-ne p0, v0, :cond_5

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_SEAT"

    return-object p0

    :cond_5
    const/4 v0, 0x6

    if-ne p0, v0, :cond_6

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_SEAT"

    return-object p0

    :cond_6
    const/4 v0, 0x7

    if-ne p0, v0, :cond_7

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_MIRROR"

    return-object p0

    :cond_7
    const/16 v0, 0x8

    if-ne p0, v0, :cond_8

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_MIRROR"

    return-object p0

    :cond_8
    const/16 v0, 0x9

    if-ne p0, v0, :cond_9

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_INFO"

    return-object p0

    :cond_9
    const/16 v0, 0xa

    if-ne p0, v0, :cond_a

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_INFO"

    return-object p0

    :cond_a
    const/16 v0, 0xb

    if-ne p0, v0, :cond_b

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_ENGINE"

    return-object p0

    :cond_b
    const/16 v0, 0xc

    if-ne p0, v0, :cond_c

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_ENGINE"

    return-object p0

    :cond_c
    const/16 v0, 0xd

    if-ne p0, v0, :cond_d

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_HVAC"

    return-object p0

    :cond_d
    const/16 v0, 0xe

    if-ne p0, v0, :cond_e

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_HVAC"

    return-object p0

    :cond_e
    const/16 v0, 0xf

    if-ne p0, v0, :cond_f

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_LIGHT"

    return-object p0

    :cond_f
    const/16 v0, 0x10

    if-ne p0, v0, :cond_10

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_LIGHT"

    return-object p0

    :cond_10
    const/high16 v0, 0x10000

    if-ne p0, v0, :cond_11

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_1"

    return-object p0

    :cond_11
    const v0, 0x11000

    if-ne p0, v0, :cond_12

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_1"

    return-object p0

    :cond_12
    const/high16 v0, 0x20000

    if-ne p0, v0, :cond_13

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_2"

    return-object p0

    :cond_13
    const v0, 0x21000

    if-ne p0, v0, :cond_14

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_2"

    return-object p0

    :cond_14
    const/high16 v0, 0x30000

    if-ne p0, v0, :cond_15

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_3"

    return-object p0

    :cond_15
    const v0, 0x31000

    if-ne p0, v0, :cond_16

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_3"

    return-object p0

    :cond_16
    const/high16 v0, 0x40000

    if-ne p0, v0, :cond_17

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_4"

    return-object p0

    :cond_17
    const v0, 0x41000

    if-ne p0, v0, :cond_18

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_4"

    return-object p0

    :cond_18
    const/high16 v0, 0x50000

    if-ne p0, v0, :cond_19

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_5"

    return-object p0

    :cond_19
    const v0, 0x51000

    if-ne p0, v0, :cond_1a

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_5"

    return-object p0

    :cond_1a
    const/high16 v0, 0x60000

    if-ne p0, v0, :cond_1b

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_6"

    return-object p0

    :cond_1b
    const v0, 0x61000

    if-ne p0, v0, :cond_1c

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_6"

    return-object p0

    :cond_1c
    const/high16 v0, 0x70000

    if-ne p0, v0, :cond_1d

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_7"

    return-object p0

    :cond_1d
    const v0, 0x71000

    if-ne p0, v0, :cond_1e

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_7"

    return-object p0

    :cond_1e
    const/high16 v0, 0x80000

    if-ne p0, v0, :cond_1f

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_8"

    return-object p0

    :cond_1f
    const v0, 0x81000

    if-ne p0, v0, :cond_20

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_8"

    return-object p0

    :cond_20
    const/high16 v0, 0x90000

    if-ne p0, v0, :cond_21

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_9"

    return-object p0

    :cond_21
    const v0, 0x91000

    if-ne p0, v0, :cond_22

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_9"

    return-object p0

    :cond_22
    const/high16 v0, 0xa0000

    if-ne p0, v0, :cond_23

    const-string p0, "PERMISSION_SET_VENDOR_CATEGORY_10"

    return-object p0

    :cond_23
    const v0, 0xa1000

    if-ne p0, v0, :cond_24

    const-string p0, "PERMISSION_GET_VENDOR_CATEGORY_10"

    return-object p0

    :cond_24
    const/high16 v0, -0x10000000

    if-ne p0, v0, :cond_25

    const-string p0, "PERMISSION_NOT_ACCESSIBLE"

    return-object p0

    .line 158
    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "0x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
