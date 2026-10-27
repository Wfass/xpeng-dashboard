.class public Lcom/nforetek/bt/res/VCardPack;
.super Ljava/lang/Object;
.source "VCardPack.java"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private HistoryDate:Ljava/lang/String;

.field private HistoryTime:Ljava/lang/String;

.field private _id:I

.field private cellPhone_Address:Ljava/lang/String;

.field private firstName:Ljava/lang/String;

.field private first_CityNameAddress:Ljava/lang/String;

.field private first_CountryAddress:Ljava/lang/String;

.field private first_FederalStateAddress:Ljava/lang/String;

.field private first_StreetAddress:Ljava/lang/String;

.field private first_ZipCodeAddress:Ljava/lang/String;

.field private fullName:Ljava/lang/String;

.field private lastName:Ljava/lang/String;

.field private phoneNumbers:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lcom/nforetek/bt/res/PhoneInfo;",
            ">;"
        }
    .end annotation
.end field

.field private second_CityNameAddress:Ljava/lang/String;

.field private second_CountryAddress:Ljava/lang/String;

.field private second_FederalStateAddress:Ljava/lang/String;

.field private second_StreetAddress:Ljava/lang/String;

.field private second_ZipCodeAddress:Ljava/lang/String;

.field private storageType:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 22
    .param p1, "cursor"    # Landroid/database/Cursor;

    move-object/from16 v0, p0

    .line 153
    move-object/from16 v1, p1

    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 154
    const-string v2, "_id"

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    .line 155
    .local v2, "idxId":I
    const-string v3, "FullName"

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    .line 156
    .local v3, "idxFullName":I
    const-string v4, "FirstName"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    .line 157
    .local v4, "idxFirstName":I
    const-string v5, "LastName"

    invoke-interface {v1, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    .line 158
    .local v5, "idxLastName":I
    const-string v6, "First_StreetAddress"

    invoke-interface {v1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    .line 159
    .local v6, "idxFirst_StreetAddress":I
    const-string v7, "First_CityNameAddress"

    invoke-interface {v1, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    .line 160
    .local v7, "idxFirst_CityNameAddress":I
    const-string v8, "First_FederalStateAddress"

    invoke-interface {v1, v8}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 161
    .local v8, "idxFirst_FederalStateAddress":I
    const-string v9, "First_ZipCodeAddress"

    invoke-interface {v1, v9}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    .line 162
    .local v9, "idxFirst_ZipCodeAddress":I
    const-string v10, "First_CountryAddress"

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v10

    .line 163
    .local v10, "idxFirst_CountryAddress":I
    const-string v11, "Second_StreetAddress"

    invoke-interface {v1, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 164
    .local v11, "idxSecond_StreetAddress":I
    const-string v12, "Second_CityNameAddress"

    invoke-interface {v1, v12}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v12

    .line 165
    .local v12, "idxSecond_CityNameAddress":I
    const-string v13, "Second_FederalStateAddress"

    invoke-interface {v1, v13}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 166
    .local v13, "idxSecond_FederalStateAddress":I
    const-string v14, "Second_ZipCodeAddress"

    invoke-interface {v1, v14}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v14

    .line 167
    .local v14, "idxSecond_ZipCodeAddress":I
    const-string v15, "Second_CountryAddress"

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 168
    .local v15, "idxSecond_CountryAddress":I
    move/from16 v16, v15

    const-string v15, "CellPhone_Address"

    .end local v15    # "idxSecond_CountryAddress":I
    .local v16, "idxSecond_CountryAddress":I
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 169
    .local v15, "idxCellPhoneAddress":I
    move/from16 v17, v15

    const-string v15, "StorageType"

    .end local v15    # "idxCellPhoneAddress":I
    .local v17, "idxCellPhoneAddress":I
    invoke-interface {v1, v15}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 171
    .local v15, "idxStroageType":I
    move/from16 v18, v15

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v15

    .end local v15    # "idxStroageType":I
    .local v18, "idxStroageType":I
    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->set_id(I)V

    .line 172
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setFullName(Ljava/lang/String;)V

    .line 173
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setFirstName(Ljava/lang/String;)V

    .line 174
    invoke-interface {v1, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setLastName(Ljava/lang/String;)V

    .line 175
    invoke-interface {v1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setFirst_StreetAddress(Ljava/lang/String;)V

    .line 176
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setFirst_CityNameAddress(Ljava/lang/String;)V

    .line 177
    invoke-interface {v1, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setFirst_FederalStateAddress(Ljava/lang/String;)V

    .line 178
    invoke-interface {v1, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setFirst_ZipCodeAddress(Ljava/lang/String;)V

    .line 179
    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setFirst_CountryAddress(Ljava/lang/String;)V

    .line 180
    invoke-interface {v1, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setSecond_StreetAddress(Ljava/lang/String;)V

    .line 181
    invoke-interface {v1, v12}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setSecond_CityNameAddress(Ljava/lang/String;)V

    .line 182
    invoke-interface {v1, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setSecond_FederalStateAddress(Ljava/lang/String;)V

    .line 183
    invoke-interface {v1, v14}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v0, v15}, Lcom/nforetek/bt/res/VCardPack;->setSecond_ZipCodeAddress(Ljava/lang/String;)V

    .line 184
    move/from16 v19, v2

    move/from16 v15, v16

    invoke-interface {v1, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "idxId":I
    .end local v16    # "idxSecond_CountryAddress":I
    .local v15, "idxSecond_CountryAddress":I
    .local v19, "idxId":I
    invoke-virtual {v0, v2}, Lcom/nforetek/bt/res/VCardPack;->setSecond_CountryAddress(Ljava/lang/String;)V

    .line 185
    move/from16 v20, v3

    move/from16 v2, v17

    invoke-interface {v1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .end local v3    # "idxFullName":I
    .end local v17    # "idxCellPhoneAddress":I
    .local v2, "idxCellPhoneAddress":I
    .local v20, "idxFullName":I
    invoke-virtual {v0, v3}, Lcom/nforetek/bt/res/VCardPack;->setCellPhone_Address(Ljava/lang/String;)V

    .line 186
    move/from16 v21, v2

    move/from16 v3, v18

    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .end local v2    # "idxCellPhoneAddress":I
    .end local v18    # "idxStroageType":I
    .local v3, "idxStroageType":I
    .local v21, "idxCellPhoneAddress":I
    invoke-virtual {v0, v2}, Lcom/nforetek/bt/res/VCardPack;->setStorageType(Ljava/lang/String;)V

    .line 187
    return-void
.end method


# virtual methods
.method public getCellPhone_Address()Ljava/lang/String;
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->cellPhone_Address:Ljava/lang/String;

    return-object v0
.end method

.method public getFirstName()Ljava/lang/String;
    .locals 1

    .line 32
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->firstName:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_CityNameAddress()Ljava/lang/String;
    .locals 1

    .line 56
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->first_CityNameAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_CountryAddress()Ljava/lang/String;
    .locals 1

    .line 80
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->first_CountryAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_FederalStateAddress()Ljava/lang/String;
    .locals 1

    .line 64
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->first_FederalStateAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_StreetAddress()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->first_StreetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFirst_ZipCodeAddress()Ljava/lang/String;
    .locals 1

    .line 72
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->first_ZipCodeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getFullName()Ljava/lang/String;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->fullName:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryDate()Ljava/lang/String;
    .locals 1

    .line 234
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->HistoryDate:Ljava/lang/String;

    return-object v0
.end method

.method public getHistoryTime()Ljava/lang/String;
    .locals 1

    .line 242
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->HistoryTime:Ljava/lang/String;

    return-object v0
.end method

.method public getLastName()Ljava/lang/String;
    .locals 1

    .line 40
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->lastName:Ljava/lang/String;

    return-object v0
.end method

.method public getPhoneNumbers()Ljava/util/Set;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Set<",
            "Lcom/nforetek/bt/res/PhoneInfo;",
            ">;"
        }
    .end annotation

    .line 136
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->phoneNumbers:Ljava/util/Set;

    return-object v0
.end method

.method public getSecond_CityNameAddress()Ljava/lang/String;
    .locals 1

    .line 96
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->second_CityNameAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond_CountryAddress()Ljava/lang/String;
    .locals 1

    .line 120
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->second_CountryAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond_FederalStateAddress()Ljava/lang/String;
    .locals 1

    .line 104
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->second_FederalStateAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond_StreetAddress()Ljava/lang/String;
    .locals 1

    .line 88
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->second_StreetAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getSecond_ZipCodeAddress()Ljava/lang/String;
    .locals 1

    .line 112
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->second_ZipCodeAddress:Ljava/lang/String;

    return-object v0
.end method

.method public getStorageType()Ljava/lang/String;
    .locals 1

    .line 144
    iget-object v0, p0, Lcom/nforetek/bt/res/VCardPack;->storageType:Ljava/lang/String;

    return-object v0
.end method

.method public get_id()I
    .locals 1

    .line 16
    iget v0, p0, Lcom/nforetek/bt/res/VCardPack;->_id:I

    return v0
.end method

.method public setCellPhone_Address(Ljava/lang/String;)V
    .locals 0
    .param p1, "cellPhone_Address"    # Ljava/lang/String;

    .line 132
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->cellPhone_Address:Ljava/lang/String;

    .line 133
    return-void
.end method

.method public setFirstName(Ljava/lang/String;)V
    .locals 0
    .param p1, "firstName"    # Ljava/lang/String;

    .line 36
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->firstName:Ljava/lang/String;

    .line 37
    return-void
.end method

.method public setFirst_CityNameAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_CityNameAddress"    # Ljava/lang/String;

    .line 60
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->first_CityNameAddress:Ljava/lang/String;

    .line 61
    return-void
.end method

.method public setFirst_CountryAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_CountryAddress"    # Ljava/lang/String;

    .line 84
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->first_CountryAddress:Ljava/lang/String;

    .line 85
    return-void
.end method

.method public setFirst_FederalStateAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_FederalStateAddress"    # Ljava/lang/String;

    .line 68
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->first_FederalStateAddress:Ljava/lang/String;

    .line 69
    return-void
.end method

.method public setFirst_StreetAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_StreetAddress"    # Ljava/lang/String;

    .line 52
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->first_StreetAddress:Ljava/lang/String;

    .line 53
    return-void
.end method

.method public setFirst_ZipCodeAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "first_ZipCodeAddress"    # Ljava/lang/String;

    .line 76
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->first_ZipCodeAddress:Ljava/lang/String;

    .line 77
    return-void
.end method

.method public setFullName(Ljava/lang/String;)V
    .locals 0
    .param p1, "fullName"    # Ljava/lang/String;

    .line 28
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->fullName:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public setHistoryDate(Ljava/lang/String;)V
    .locals 0
    .param p1, "historyDate"    # Ljava/lang/String;

    .line 238
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->HistoryDate:Ljava/lang/String;

    .line 239
    return-void
.end method

.method public setHistoryTime(Ljava/lang/String;)V
    .locals 0
    .param p1, "historyTime"    # Ljava/lang/String;

    .line 246
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->HistoryTime:Ljava/lang/String;

    .line 247
    return-void
.end method

.method public setLastName(Ljava/lang/String;)V
    .locals 0
    .param p1, "lastName"    # Ljava/lang/String;

    .line 44
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->lastName:Ljava/lang/String;

    .line 45
    return-void
.end method

.method public setPhoneNumbers(Ljava/util/Set;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Lcom/nforetek/bt/res/PhoneInfo;",
            ">;)V"
        }
    .end annotation

    .line 140
    .local p1, "phoneNumbers":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->phoneNumbers:Ljava/util/Set;

    .line 141
    return-void
.end method

.method public setSecond_CityNameAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "second_CityNameAddress"    # Ljava/lang/String;

    .line 100
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->second_CityNameAddress:Ljava/lang/String;

    .line 101
    return-void
.end method

.method public setSecond_CountryAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "second_CountryAddress"    # Ljava/lang/String;

    .line 124
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->second_CountryAddress:Ljava/lang/String;

    .line 125
    return-void
.end method

.method public setSecond_FederalStateAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "second_FederalStateAddress"    # Ljava/lang/String;

    .line 108
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->second_FederalStateAddress:Ljava/lang/String;

    .line 109
    return-void
.end method

.method public setSecond_StreetAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "second_StreetAddress"    # Ljava/lang/String;

    .line 92
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->second_StreetAddress:Ljava/lang/String;

    .line 93
    return-void
.end method

.method public setSecond_ZipCodeAddress(Ljava/lang/String;)V
    .locals 0
    .param p1, "second_ZipCodeAddress"    # Ljava/lang/String;

    .line 116
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->second_ZipCodeAddress:Ljava/lang/String;

    .line 117
    return-void
.end method

.method public setStorageType(Ljava/lang/String;)V
    .locals 0
    .param p1, "storageType"    # Ljava/lang/String;

    .line 148
    iput-object p1, p0, Lcom/nforetek/bt/res/VCardPack;->storageType:Ljava/lang/String;

    .line 149
    return-void
.end method

.method public set_id(I)V
    .locals 0
    .param p1, "_id"    # I

    .line 20
    iput p1, p0, Lcom/nforetek/bt/res/VCardPack;->_id:I

    .line 21
    return-void
.end method
