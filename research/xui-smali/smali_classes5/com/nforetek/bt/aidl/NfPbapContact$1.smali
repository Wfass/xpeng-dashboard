.class Lcom/nforetek/bt/aidl/NfPbapContact$1;
.super Ljava/lang/Object;
.source "NfPbapContact.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nforetek/bt/aidl/NfPbapContact;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/nforetek/bt/aidl/NfPbapContact;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 433
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/nforetek/bt/aidl/NfPbapContact;
    .locals 30
    .param p1, "in"    # Landroid/os/Parcel;

    .line 436
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v15

    .line 437
    .local v15, "r1":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 438
    .local v16, "r2":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v17

    .line 439
    .local v17, "r3":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v18

    .line 440
    .local v18, "r4":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 441
    .local v19, "r5":Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v20

    .line 442
    .local v20, "r6":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v21

    .line 443
    .local v21, "r7":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 444
    .local v22, "r8":I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v23

    .line 445
    .local v23, "r9":[B
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v24

    .line 446
    .local v24, "r10":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v25

    .line 447
    .local v25, "r11":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v26

    .line 448
    .local v26, "r12":[I
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v27

    .line 449
    .local v27, "r13":[Ljava/lang/String;
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v28

    .line 451
    .local v28, "r14":Ljava/lang/String;
    new-instance v29, Lcom/nforetek/bt/aidl/NfPbapContact;

    move-object/from16 v0, v29

    move-object v1, v15

    move/from16 v2, v16

    move-object/from16 v3, v17

    move-object/from16 v4, v18

    move-object/from16 v5, v19

    move-object/from16 v6, v20

    move-object/from16 v7, v21

    move/from16 v8, v22

    move-object/from16 v9, v23

    move-object/from16 v10, v24

    move-object/from16 v11, v25

    move-object/from16 v12, v26

    move-object/from16 v13, v27

    move-object/from16 v14, v28

    invoke-direct/range {v0 .. v14}, Lcom/nforetek/bt/aidl/NfPbapContact;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[I[Ljava/lang/String;I[B[I[Ljava/lang/String;[I[Ljava/lang/String;Ljava/lang/String;)V

    return-object v29
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/NfPbapContact$1;->createFromParcel(Landroid/os/Parcel;)Lcom/nforetek/bt/aidl/NfPbapContact;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lcom/nforetek/bt/aidl/NfPbapContact;
    .locals 1
    .param p1, "size"    # I

    .line 456
    new-array v0, p1, [Lcom/nforetek/bt/aidl/NfPbapContact;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/nforetek/bt/aidl/NfPbapContact$1;->newArray(I)[Lcom/nforetek/bt/aidl/NfPbapContact;

    move-result-object p1

    return-object p1
.end method
