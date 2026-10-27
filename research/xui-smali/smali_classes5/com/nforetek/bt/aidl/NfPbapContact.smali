.class public Lcom/nforetek/bt/aidl/NfPbapContact;
.super Ljava/lang/Object;
.source "NfPbapContact.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final ADDRESS_TYPE_DOM:I = 0x1

.field public static final ADDRESS_TYPE_HOME:I = 0x6

.field public static final ADDRESS_TYPE_INTL:I = 0x2

.field public static final ADDRESS_TYPE_NULL:I = 0x0

.field public static final ADDRESS_TYPE_PARCEL:I = 0x4

.field public static final ADDRESS_TYPE_POSTAL:I = 0x3

.field public static final ADDRESS_TYPE_WORK:I = 0x5

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/nforetek/bt/aidl/NfPbapContact;",
            ">;"
        }
    .end annotation
.end field

.field public static final EMAIL_TYPE_HOME:I = 0x5

.field public static final EMAIL_TYPE_INTERNET:I = 0x2

.field public static final EMAIL_TYPE_NULL:I = 0x0

.field public static final EMAIL_TYPE_PREF:I = 0x1

.field public static final EMAIL_TYPE_WORK:I = 0x4

.field public static final EMAIL_TYPE_X400:I = 0x3

.field public static final NUMBER_TYPE_CELL:I = 0x7

.field public static final NUMBER_TYPE_FAX:I = 0x5

.field public static final NUMBER_TYPE_HOME:I = 0x3

.field public static final NUMBER_TYPE_MSG:I = 0x6

.field public static final NUMBER_TYPE_NULL:I = 0x0

.field public static final NUMBER_TYPE_PAGER:I = 0x8

.field public static final NUMBER_TYPE_PREF:I = 0x1

.field public static final NUMBER_TYPE_VOICE:I = 0x4

.field public static final NUMBER_TYPE_WORK:I = 0x2

.field public static final STORAGE_TYPE_CALL_LOGS:I = 0x8

.field public static final STORAGE_TYPE_DIALED_CALLS:I = 0x7

.field public static final STORAGE_TYPE_FAVORITE:I = 0x4

.field public static final STORAGE_TYPE_MISSED_CALLS:I = 0x5

.field public static final STORAGE_TYPE_PHONE_MEMORY:I = 0x2

.field public static final STORAGE_TYPE_RECEIVED_CALLS:I = 0x6

.field public static final STORAGE_TYPE_SIM:I = 0x1

.field public static final STORAGE_TYPE_SPEEDDIAL:I = 0x3


# instance fields
.field private final mAddress:[Ljava/lang/String;

.field private final mAddressType:[I

.field private final mEmail:[Ljava/lang/String;

.field private final mEmailType:[I

.field private final mFirstName:Ljava/lang/String;

.field private final mLastName:Ljava/lang/String;

.field private final mMiddleName:Ljava/lang/String;

.field private final mNumber:[Ljava/lang/String;

.field private final mOrg:Ljava/lang/String;

.field private final mPhoneType:[I

.field private final mPhoto:[B

.field private final mPhotoType:I

.field private final mRemoteAddress:Ljava/lang/String;

.field private final mStorageType:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 433
    new-instance v0, Lcom/nforetek/bt/aidl/NfPbapContact$1;

    invoke-direct {v0}, Lcom/nforetek/bt/aidl/NfPbapContact$1;-><init>()V

    .line 432
    sput-object v0, Lcom/nforetek/bt/aidl/NfPbapContact;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 458
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[Ljava/lang/String;I[B[I[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "bt_address"    # Ljava/lang/String;
    .param p2, "storage"    # I
    .param p3, "firstName"    # Ljava/lang/String;
    .param p4, "middleName"    # Ljava/lang/String;
    .param p5, "lastName"    # Ljava/lang/String;
    .param p6, "phoneType"    # [I
    .param p7, "number"    # [Ljava/lang/String;
    .param p8, "photoType"    # I
    .param p9, "photo"    # [B
    .param p10, "emailType"    # [I
    .param p11, "email"    # [Ljava/lang/String;
    .param p12, "addressType"    # [I
    .param p13, "address"    # [Ljava/lang/String;
    .param p14, "org"    # Ljava/lang/String;

    .line 158
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mRemoteAddress:Ljava/lang/String;

    .line 162
    iput p2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mStorageType:I

    .line 163
    iput-object p3, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mFirstName:Ljava/lang/String;

    .line 164
    iput-object p4, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mMiddleName:Ljava/lang/String;

    .line 165
    iput-object p5, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mLastName:Ljava/lang/String;

    .line 166
    iput-object p6, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoneType:[I

    .line 167
    iput-object p7, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mNumber:[Ljava/lang/String;

    .line 168
    iput p8, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhotoType:I

    .line 169
    if-eqz p9, :cond_0

    array-length v0, p9

    if-lez v0, :cond_0

    move-object v0, p9

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoto:[B

    .line 170
    iput-object p10, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmailType:[I

    .line 171
    iput-object p11, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmail:[Ljava/lang/String;

    .line 172
    iput-object p12, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddressType:[I

    .line 173
    iput-object p13, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddress:[Ljava/lang/String;

    .line 174
    iput-object p14, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mOrg:Ljava/lang/String;

    .line 175
    return-void
.end method

.method private getAddressTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 402
    packed-switch p1, :pswitch_data_0

    .line 410
    const-string v0, "Unknown"

    return-object v0

    .line 409
    :pswitch_0
    const-string v0, "Home"

    return-object v0

    .line 408
    :pswitch_1
    const-string v0, "Work"

    return-object v0

    .line 407
    :pswitch_2
    const-string v0, "Parcel"

    return-object v0

    .line 406
    :pswitch_3
    const-string v0, "Postal"

    return-object v0

    .line 405
    :pswitch_4
    const-string v0, "International"

    return-object v0

    .line 404
    :pswitch_5
    const-string v0, "Pref"

    return-object v0

    .line 403
    :pswitch_6
    const-string v0, "Null"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getEmailTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 390
    packed-switch p1, :pswitch_data_0

    .line 397
    const-string v0, "Unknown"

    return-object v0

    .line 396
    :pswitch_0
    const-string v0, "Home"

    return-object v0

    .line 395
    :pswitch_1
    const-string v0, "Work"

    return-object v0

    .line 394
    :pswitch_2
    const-string v0, "X400"

    return-object v0

    .line 393
    :pswitch_3
    const-string v0, "Internet"

    return-object v0

    .line 392
    :pswitch_4
    const-string v0, "Pref"

    return-object v0

    .line 391
    :pswitch_5
    const-string v0, "Null"

    return-object v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private getNumberTypeString(I)Ljava/lang/String;
    .locals 1
    .param p1, "type"    # I

    .line 415
    packed-switch p1, :pswitch_data_0

    .line 425
    const-string v0, "Unknown"

    return-object v0

    .line 424
    :pswitch_0
    const-string v0, "Pager"

    return-object v0

    .line 423
    :pswitch_1
    const-string v0, "Cell"

    return-object v0

    .line 422
    :pswitch_2
    const-string v0, "Msg"

    return-object v0

    .line 421
    :pswitch_3
    const-string v0, "Fax"

    return-object v0

    .line 420
    :pswitch_4
    const-string v0, "Voice"

    return-object v0

    .line 419
    :pswitch_5
    const-string v0, "Home"

    return-object v0

    .line 418
    :pswitch_6
    const-string v0, "Work"

    return-object v0

    .line 417
    :pswitch_7
    const-string v0, "Pref"

    return-object v0

    .line 416
    :pswitch_8
    const-string v0, "Null"

    return-object v0

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_8
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


# virtual methods
.method public describeContents()I
    .locals 1

    .line 480
    const/4 v0, 0x0

    return v0
.end method

.method public getAddressArray()[Ljava/lang/String;
    .locals 1

    .line 310
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddress:[Ljava/lang/String;

    return-object v0
.end method

.method public getAddressType()[I
    .locals 1

    .line 302
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddressType:[I

    return-object v0
.end method

.method public getEmailArray()[Ljava/lang/String;
    .locals 1

    .line 286
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmail:[Ljava/lang/String;

    return-object v0
.end method

.method public getEmailTypeArray()[I
    .locals 1

    .line 278
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmailType:[I

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 209
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mFirstName:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 225
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mLastName:Ljava/lang/String;

    return-object v0
.end method

.method public getMiddleName()Ljava/lang/String;
    .locals 1

    .line 217
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mMiddleName:Ljava/lang/String;

    return-object v0
.end method

.method public getNumberArray()[Ljava/lang/String;
    .locals 1

    .line 251
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mNumber:[Ljava/lang/String;

    return-object v0
.end method

.method public getOrg()Ljava/lang/String;
    .locals 1

    .line 319
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mOrg:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneTypeArray()[I
    .locals 1

    .line 243
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoneType:[I

    return-object v0
.end method

.method public getPhotoByteArray()[B
    .locals 1

    .line 263
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoto:[B

    return-object v0
.end method

.method public getPhotoType()I
    .locals 1

    .line 255
    iget v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhotoType:I

    return v0
.end method

.method public getRemoteAddress()Ljava/lang/String;
    .locals 1

    .line 183
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mRemoteAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageType()I
    .locals 1

    .line 201
    iget v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mStorageType:I

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 324
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "===NfPbapContact "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 325
    .local v0, "builder":Ljava/lang/StringBuilder;
    iget v1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mStorageType:I

    packed-switch v1, :pswitch_data_0

    .line 334
    iget v1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mStorageType:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 331
    :pswitch_0
    const-string v1, "Combine Calllogs"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 330
    :pswitch_1
    const-string v1, "Dialed Calls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 329
    :pswitch_2
    const-string v1, "Received Calls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 328
    :pswitch_3
    const-string v1, "Missed Calls"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 333
    :pswitch_4
    const-string v1, "Favorite"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 332
    :pswitch_5
    const-string v1, "Speed Dial"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 327
    :pswitch_6
    const-string v1, "Memory"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 326
    :pswitch_7
    const-string v1, "Sim"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 336
    :goto_0
    const-string v1, "===\n   RemoteAddress: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 337
    new-instance v1, Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mRemoteAddress:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 339
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   Name: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mFirstName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mMiddleName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "|"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mLastName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 341
    iget-object v1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mNumber:[Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 342
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mNumber:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_0

    .end local v1    # "i":I
    goto :goto_2

    .line 343
    .restart local v1    # "i":I
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   Number: ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoneType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/nforetek/bt/aidl/NfPbapContact;->getNumberTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mNumber:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 342
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 346
    .end local v1    # "i":I
    :cond_1
    :goto_2
    iget-object v1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoto:[B

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoto:[B

    array-length v1, v1

    if-lez v1, :cond_2

    .line 347
    const-string v1, "   Photo: yes\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 348
    goto :goto_3

    .line 350
    :cond_2
    const-string v1, "   Photo: no\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 352
    :goto_3
    iget-object v1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmail:[Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 353
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_4
    iget-object v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmail:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_3

    .end local v1    # "i":I
    goto :goto_5

    .line 354
    .restart local v1    # "i":I
    :cond_3
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   e-mail: ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmailType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/nforetek/bt/aidl/NfPbapContact;->getEmailTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmail:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 353
    add-int/lit8 v1, v1, 0x1

    goto :goto_4

    .line 357
    .end local v1    # "i":I
    :cond_4
    :goto_5
    iget-object v1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddress:[Ljava/lang/String;

    if-eqz v1, :cond_6

    .line 358
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_6
    iget-object v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddress:[Ljava/lang/String;

    array-length v2, v2

    if-lt v1, v2, :cond_5

    .end local v1    # "i":I
    goto :goto_7

    .line 359
    .restart local v1    # "i":I
    :cond_5
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "   Address: ("

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddressType:[I

    aget v3, v3, v1

    invoke-direct {p0, v3}, Lcom/nforetek/bt/aidl/NfPbapContact;->getAddressTypeString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddress:[Ljava/lang/String;

    aget-object v3, v3, v1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 358
    add-int/lit8 v1, v1, 0x1

    goto :goto_6

    .line 363
    .end local v1    # "i":I
    :cond_6
    :goto_7
    iget-object v1, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mOrg:Ljava/lang/String;

    if-eqz v1, :cond_7

    .line 364
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "   Org: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mOrg:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    :cond_7
    const/16 v1, 0x14

    .line 369
    .local v1, "under_line":I
    iget v2, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mStorageType:I

    packed-switch v2, :pswitch_data_1

    .line 379
    add-int/lit8 v1, v1, 0x1

    goto :goto_8

    .line 376
    :pswitch_8
    add-int/lit8 v1, v1, 0x10

    goto :goto_8

    .line 375
    :pswitch_9
    add-int/lit8 v1, v1, 0xc

    goto :goto_8

    .line 374
    :pswitch_a
    add-int/lit8 v1, v1, 0xe

    goto :goto_8

    .line 373
    :pswitch_b
    add-int/lit8 v1, v1, 0xc

    goto :goto_8

    .line 378
    :pswitch_c
    add-int/lit8 v1, v1, 0x8

    goto :goto_8

    .line 377
    :pswitch_d
    add-int/lit8 v1, v1, 0xa

    goto :goto_8

    .line 372
    :pswitch_e
    add-int/lit8 v1, v1, 0x6

    goto :goto_8

    .line 371
    :pswitch_f
    add-int/lit8 v1, v1, 0x3

    .line 381
    :goto_8
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_9
    if-lt v2, v1, :cond_8

    .line 386
    .end local v2    # "i":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 382
    .restart local v2    # "i":I
    :cond_8
    const-string v3, "="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 381
    add-int/lit8 v2, v2, 0x1

    goto :goto_9

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

    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
    .end packed-switch
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .line 462
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mRemoteAddress:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 463
    iget v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mStorageType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 464
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mFirstName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 465
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mMiddleName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 466
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mLastName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 467
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoneType:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 468
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mNumber:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 469
    iget v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhotoType:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 470
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoto:[B

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mPhoto:[B

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [B

    :goto_0
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 471
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmailType:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 472
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mEmail:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 473
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddressType:[I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 474
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mAddress:[Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 475
    iget-object v0, p0, Lcom/nforetek/bt/aidl/NfPbapContact;->mOrg:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 476
    return-void
.end method
