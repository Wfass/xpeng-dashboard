.class public Lcom/nforetek/util/db/DbHelperPbap;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelperPbap.java"


# static fields
.field private static final ADDRESS_DETAIL:Ljava/lang/String; = "AddressDetail"

.field public static final ADDRESS_DETAIL_FIELD:[Ljava/lang/String;

.field private static final CALLHISTORY_CONTENT:Ljava/lang/String; = "CallHistory"

.field public static final CALLHISTORY_FIELD:[Ljava/lang/String;

.field private static final DATABASE_NAME:Ljava/lang/String; = "db_pbap"

.field private static final DATABASE_VERSION:I = 0x1

.field private static final EMAIL_DETAIL:Ljava/lang/String; = "EmailDetail"

.field public static final EMAIL_DETAIL_FIELD:[Ljava/lang/String;

.field private static final PHONEBOOK_CONTENT:Ljava/lang/String; = "PhoneBookContent"

.field public static final PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

.field private static final PHONENUMBER_DETAIL:Ljava/lang/String; = "PhoneNumberDetail"

.field public static final PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

.field private static final PHONE_TYPE:Ljava/lang/String; = "PhoneType"

.field public static final PHONE_TYPE_FIELD:[Ljava/lang/String;


# instance fields
.field private final D:Z

.field private final SQL_DELETE_CONTACTER:Ljava/lang/String;

.field private final SQL_DELETE_PHONENUMBER:Ljava/lang/String;

.field private final SQL_DELETE_PHONENUMBER_BY_FULLNAME:Ljava/lang/String;

.field private final SQL_EXPRESS_TOTAL:Ljava/lang/String;

.field private final SQL_QUERY_CALLHISTORY_BY_ADDRESS_STORAGETYPE:Ljava/lang/String;

.field private final SQL_QUERY_CALLHISTORY_BY_SPECIFIED_COLUMNS:Ljava/lang/String;

.field private final SQL_QUERY_CONTACTER:Ljava/lang/String;

.field private final SQL_QUERY_CONTACTERS:Ljava/lang/String;

.field private final SQL_QUERY_FULLNAME_BY_PHONENUM_CELLPHONEADDRESS:Ljava/lang/String;

.field private final SQL_QUERY_FULLNAME_LIKE_BY_PHONENUM_CELLPHONEADDRESS:Ljava/lang/String;

.field private final SQL_QUERY_PHONEBOOKCONTENT:Ljava/lang/String;

.field private final SQL_QUERY_PHONEBOOKCONTENT_BY_PHONENUM:Ljava/lang/String;

.field private final SQL_QUERY_PHONEDATA_BY_PAGE:Ljava/lang/String;

.field private final SQL_QUERY_PHONENUMBERDETAIL:Ljava/lang/String;

.field private final SQL_QUERY_PHONETYPE_NAME:Ljava/lang/String;

.field private final SQL_QUERY_PHONE_BY_CONTENT_ID:Ljava/lang/String;

.field private TAG:Ljava/lang/String;

.field private m_context:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 68
    nop

    .line 69
    const-string v0, "_id"

    .line 70
    const-string v1, "FullName"

    .line 71
    const-string v2, "FirstName"

    .line 72
    const-string v3, "MiddleName"

    .line 73
    const-string v4, "LastName"

    .line 74
    const-string v5, "First_StreetAddress"

    .line 75
    const-string v6, "First_CityNameAddress"

    .line 76
    const-string v7, "First_FederalStateAddress"

    .line 77
    const-string v8, "First_ZipCodeAddress"

    .line 78
    const-string v9, "First_CountryAddress"

    .line 79
    const-string v10, "Second_StreetAddress"

    .line 80
    const-string v11, "Second_CityNameAddress"

    .line 81
    const-string v12, "Second_FederalStateAddress"

    .line 82
    const-string v13, "Second_ZipCodeAddress"

    .line 83
    const-string v14, "Second_CountryAddress"

    .line 84
    const-string v15, "CellPhone_Address"

    .line 85
    const-string v16, "StorageType"

    .line 86
    const-string v17, "PhotoPath"

    .line 87
    const-string v18, "Org"

    .line 68
    filled-new-array/range {v0 .. v18}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    .line 90
    const-string v0, "_id"

    const-string v1, "Content_ID"

    const-string v2, "Type"

    const-string v3, "Number"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelperPbap;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    .line 93
    const-string v0, "_id"

    const-string v1, "Content_ID"

    const-string v2, "AddressType"

    const-string v3, "Address"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelperPbap;->ADDRESS_DETAIL_FIELD:[Ljava/lang/String;

    .line 96
    const-string v0, "_id"

    const-string v1, "Content_ID"

    const-string v2, "EmailType"

    const-string v3, "Email"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelperPbap;->EMAIL_DETAIL_FIELD:[Ljava/lang/String;

    .line 99
    const-string v0, "Type"

    const-string v1, "TypeName"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelperPbap;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    .line 102
    const-string v1, "_id"

    const-string v2, "FullName"

    const-string v3, "FirstName"

    const-string v4, "LastName"

    const-string v5, "CellPhone_Address"

    .line 103
    const-string v6, "StorageType"

    const-string v7, "PhoneType"

    const-string v8, "PhoneNumber"

    const-string v9, "HistoryDate"

    const-string v10, "HistoryTime"

    .line 102
    filled-new-array/range {v1 .. v10}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    .line 103
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 110
    const-string v0, "db_pbap"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 39
    iput-boolean v1, p0, Lcom/nforetek/util/db/DbHelperPbap;->D:Z

    .line 40
    const-string v0, "DbHelperPbap"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->TAG:Ljava/lang/String;

    .line 977
    const-string v0, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName limit 10 offset ?) and StorageType=? and CellPhone_Address = ? order by FullName"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_PHONEDATA_BY_PAGE:Ljava/lang/String;

    .line 983
    const-string v0, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName) and StorageType=? and CellPhone_Address = ? order by "

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_CONTACTERS:Ljava/lang/String;

    .line 989
    nop

    .line 990
    const-string v0, "select a._id, a.FullName, a.StorageType, a.PhoneNumber, a.PhoneType, a.HistoryDate, a.HistoryTime from CallHistory a where a.CellPhone_Address = ? and a.StorageType=? order by "

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_CALLHISTORY_BY_ADDRESS_STORAGETYPE:Ljava/lang/String;

    .line 1002
    nop

    .line 1003
    const-string v0, "select * from CallHistory a where a.StorageType = ? and a.CellPhone_Address = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_CALLHISTORY_BY_SPECIFIED_COLUMNS:Ljava/lang/String;

    .line 1008
    const-string v0, "select a.*, b.TypeName as TypeName from PhoneNumberDetail a inner join PhoneType b on a.Type = b.Type where a.Content_ID = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_PHONE_BY_CONTENT_ID:Ljava/lang/String;

    .line 1012
    const-string v0, "select * from PhoneBookContent where FullName like ? and StorageType = ? and CellPhone_Address = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_PHONEBOOKCONTENT:Ljava/lang/String;

    .line 1016
    const-string v0, "select * from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number like ?) and StorageType = ? and CellPhone_Address = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_PHONEBOOKCONTENT_BY_PHONENUM:Ljava/lang/String;

    .line 1021
    const-string v0, "select FullName from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number = ?) and CellPhone_Address = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_FULLNAME_BY_PHONENUM_CELLPHONEADDRESS:Ljava/lang/String;

    .line 1026
    nop

    .line 1027
    const-string v0, "select a.FullName, b.Number from PhoneBookcontent a inner join phonenumberdetail b on a._id = b.Content_id where b.Number like ? and a.cellphone_address = ? order by b.Number;"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_FULLNAME_LIKE_BY_PHONENUM_CELLPHONEADDRESS:Ljava/lang/String;

    .line 1036
    const-string v0, "select a.*, b.TypeName from PhoneNumberDetail.a inner join PhoneType b on a.Type = b.Type where Number = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_PHONENUMBERDETAIL:Ljava/lang/String;

    .line 1040
    const-string v0, "delete from PhoneBookContent where FullName = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_DELETE_CONTACTER:Ljava/lang/String;

    .line 1044
    const-string v0, "delete from PhoneNumberDetail where Number = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_DELETE_PHONENUMBER:Ljava/lang/String;

    .line 1048
    const-string v0, "delete from PhoneNumberDetail where Content_ID in (select _id from PhoneBookContent where FullName = ?)"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_DELETE_PHONENUMBER_BY_FULLNAME:Ljava/lang/String;

    .line 1059
    const-string v0, "select TypeName from PhoneType where Type = ? "

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_PHONETYPE_NAME:Ljava/lang/String;

    .line 1061
    const-string v0, "select a.FullName from PhoneBookContent a where a.CellPhone_Address=? and StorageType=? group by a.FullName"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_EXPRESS_TOTAL:Ljava/lang/String;

    .line 1065
    const-string v0, "select FullName from PhoneBookContent where _id = (select Content_ID from PhoneNumberDetail where Number like ? limit 1)"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->SQL_QUERY_CONTACTER:Ljava/lang/String;

    .line 111
    iput-object p1, p0, Lcom/nforetek/util/db/DbHelperPbap;->m_context:Landroid/content/Context;

    .line 112
    return-void
.end method

.method private collectionData(Landroid/database/Cursor;)Ljava/util/List;
    .locals 7
    .param p1, "cursor"    # Landroid/database/Cursor;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/res/VCardPack;",
            ">;"
        }
    .end annotation

    .line 882
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 884
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 886
    :cond_0
    new-instance v1, Lcom/nforetek/bt/res/VCardPack;

    invoke-direct {v1}, Lcom/nforetek/bt/res/VCardPack;-><init>()V

    .line 887
    .local v1, "pack":Lcom/nforetek/bt/res/VCardPack;
    const-string v2, "FullName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nforetek/bt/res/VCardPack;->setFullName(Ljava/lang/String;)V

    .line 889
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nforetek/bt/res/VCardPack;->set_id(I)V

    .line 891
    new-instance v2, Lcom/nforetek/bt/res/PhoneInfo;

    invoke-direct {v2}, Lcom/nforetek/bt/res/PhoneInfo;-><init>()V

    .line 893
    .local v2, "pInfo":Lcom/nforetek/bt/res/PhoneInfo;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 895
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    const-string v4, ""

    .line 896
    .local v4, "storageType":Ljava/lang/String;
    const/4 v5, -0x1

    .line 898
    .local v5, "int_StorageType":I
    const-string v6, "StorageType"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 899
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 901
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    if-lez v5, :cond_1

    .line 902
    const-string v6, "Number"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 903
    const-string v6, "Type"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneType(Ljava/lang/String;)V

    .line 904
    goto :goto_0

    .line 905
    :cond_1
    if-lt v5, v6, :cond_2

    const/4 v6, 0x5

    if-gt v5, v6, :cond_2

    .line 906
    const-string v6, "PhoneNumber"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 907
    const-string v6, "PhoneType"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneType(Ljava/lang/String;)V

    .line 908
    const-string v6, "HistoryDate"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nforetek/bt/res/VCardPack;->setHistoryDate(Ljava/lang/String;)V

    .line 909
    const-string v6, "HistoryTime"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nforetek/bt/res/VCardPack;->setHistoryTime(Ljava/lang/String;)V

    .line 912
    :cond_2
    :goto_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 913
    invoke-virtual {v1, v3}, Lcom/nforetek/bt/res/VCardPack;->setPhoneNumbers(Ljava/util/Set;)V

    .line 914
    invoke-virtual {v1, v4}, Lcom/nforetek/bt/res/VCardPack;->setStorageType(Ljava/lang/String;)V

    .line 916
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 918
    .end local v1    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .end local v2    # "pInfo":Lcom/nforetek/bt/res/PhoneInfo;
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v4    # "storageType":Ljava/lang/String;
    .end local v5    # "int_StorageType":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 921
    :cond_3
    return-object v0
.end method

.method private queryContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "StorageType"    # I
    .param p4, "address"    # Ljava/lang/String;

    .line 425
    const-string v0, "select * from PhoneBookContent where FullName like ? and StorageType = ? and CellPhone_Address = ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 426
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method private queryContacterByPhoneNum(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "StorageType"    # I
    .param p4, "address"    # Ljava/lang/String;

    .line 431
    const-string v0, "select * from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number like ?) and StorageType = ? and CellPhone_Address = ?"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    const/4 v2, 0x2

    aput-object p4, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 433
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method


# virtual methods
.method public callHistoryBySpecifiedColumns(Landroid/database/sqlite/SQLiteDatabase;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/nforetek/bt/res/VCardList;
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "storageType"    # I
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "historyDate"    # Ljava/lang/String;
    .param p5, "historyTime"    # Ljava/lang/String;
    .param p6, "phoneNumber"    # Ljava/lang/String;

    .line 813
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 814
    .local v0, "queryStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 815
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 817
    const-string v1, "select * from CallHistory a where a.StorageType = ? and a.CellPhone_Address = ?"

    .line 819
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 821
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " and a.HistoryDate like ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 822
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 825
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 827
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " and a.HistoryTime like ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 828
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 831
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 833
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " and a.PhoneNumber like ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 834
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 837
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 838
    .local v2, "queryColumns":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 840
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v3}, Lcom/nforetek/util/db/DbHelperPbap;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v4

    .line 841
    .local v4, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 843
    new-instance v5, Lcom/nforetek/bt/res/VCardList;

    invoke-direct {v5}, Lcom/nforetek/bt/res/VCardList;-><init>()V

    .line 844
    .local v5, "vcardList":Lcom/nforetek/bt/res/VCardList;
    invoke-virtual {v5, v4}, Lcom/nforetek/bt/res/VCardList;->setVcardPacks(Ljava/util/List;)V

    .line 846
    return-object v5
.end method

.method public deleteAllTableContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 1076
    const-string v0, "PhoneNumberDetail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1077
    const-string v0, "PhoneBookContent"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1078
    const-string v0, "CallHistory"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 1079
    return-void
.end method

.method public deleteCallHistoryById(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # I

    .line 930
    const-string v0, "CallHistory"

    const-string v1, "_id=?"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 931
    return-void
.end method

.method public deleteCallHistoryInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "StorageType"    # I

    .line 596
    const-string v0, "CallHistory"

    const-string v1, "CellPhone_Address=? and StorageType=?"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x1

    aput-object v3, v2, v4

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    .line 598
    .local v0, "delCount_Content":I
    return v0
.end method

.method public deleteContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fullName"    # Ljava/lang/String;

    .line 481
    const-string v0, "delete from PhoneBookContent where FullName = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method public deleteContacterById(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # I

    .line 925
    const-string v0, "PhoneNumberDetail"

    const-string v1, "Content_ID=?"

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {p1, v0, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 926
    const-string v0, "PhoneBookContent"

    const-string v1, "_id=?"

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 927
    return-void
.end method

.method public deletePhoneNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneNum"    # Ljava/lang/String;

    .line 487
    const-string v0, "delete from PhoneNumberDetail where Number = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 488
    return-void
.end method

.method public deletePhoneNumberByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fullName"    # Ljava/lang/String;

    .line 492
    const-string v0, "delete from PhoneNumberDetail where Content_ID in (select _id from PhoneBookContent where FullName = ?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 493
    return-void
.end method

.method public deleteVcardInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "StorageType"    # I

    .line 563
    const/4 v0, 0x0

    .line 566
    .local v0, "delCount_Content":I
    const-string v2, "PhoneBookContent"

    const-string v1, "_id, PhotoPath"

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v3

    const-string v4, "CellPhone_Address=? and StorageType=?"

    const/4 v9, 0x2

    new-array v5, v9, [Ljava/lang/String;

    const/4 v10, 0x0

    aput-object p2, v5, v10

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const/4 v11, 0x1

    aput-object v1, v5, v11

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v1, p1

    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 568
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 569
    .local v2, "delCount_Number":I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_2

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 571
    move v3, v2

    move v2, v10

    .line 573
    .local v2, "tmpCount":I
    .local v3, "delCount_Number":I
    :cond_0
    const-string v4, "PhoneNumberDetail"

    const-string v5, "Content_ID=?"

    new-array v6, v11, [Ljava/lang/String;

    invoke-interface {v1, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v10

    invoke-virtual {p1, v4, v5, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v2

    .line 574
    add-int/2addr v3, v2

    .line 575
    const-string v4, "PhotoPath"

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 576
    .local v4, "photoPath":Ljava/lang/String;
    if-eqz v4, :cond_1

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1

    .line 577
    invoke-static {v4}, Lcom/nforetek/util/normal/NfUtils;->deleteFile(Ljava/lang/String;)Z

    .line 579
    .end local v4    # "photoPath":Ljava/lang/String;
    :cond_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 583
    .end local v2    # "tmpCount":I
    move v2, v3

    .end local v3    # "delCount_Number":I
    .local v2, "delCount_Number":I
    :cond_2
    if-ltz v2, :cond_3

    .line 585
    const-string v3, "PhoneBookContent"

    const-string v4, "CellPhone_Address=? and StorageType=?"

    new-array v5, v9, [Ljava/lang/String;

    aput-object p2, v5, v10

    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v5, v11

    invoke-virtual {p1, v3, v4, v5}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v3

    add-int/2addr v0, v3

    .line 588
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 590
    return v0
.end method

.method public insertCallHistoryInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/nforetek/bt/res/VCardPack;I)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "vcardPack"    # Lcom/nforetek/bt/res/VCardPack;
    .param p3, "type"    # I

    .line 672
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 674
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_a

    .line 685
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 688
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 690
    .local v2, "numName":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v2, v3

    .line 691
    iget-object v3, p0, Lcom/nforetek/util/db/DbHelperPbap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "numName : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 692
    goto :goto_0

    .line 693
    :catch_0
    move-exception v3

    .line 694
    .local v3, "e":Ljava/lang/NumberFormatException;
    invoke-virtual {v3}, Ljava/lang/NumberFormatException;->printStackTrace()V

    .line 697
    .end local v3    # "e":Ljava/lang/NumberFormatException;
    :goto_0
    if-gez v2, :cond_0

    .line 698
    iget-object v3, p0, Lcom/nforetek/util/db/DbHelperPbap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "name is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , automatically set it to \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Private Number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 699
    const-string v1, "Private Number"

    .line 702
    .end local v2    # "numName":I
    :cond_0
    const-string v2, "FullName"

    if-nez v1, :cond_1

    const-string v3, ""

    goto :goto_1

    :cond_1
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFullName()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 703
    const-string v2, "FirstName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirstName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_2

    const-string v3, ""

    goto :goto_2

    :cond_2
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirstName()Ljava/lang/String;

    move-result-object v3

    :goto_2
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 704
    const-string v2, "LastName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getLastName()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_3

    const-string v3, ""

    goto :goto_3

    :cond_3
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getLastName()Ljava/lang/String;

    move-result-object v3

    :goto_3
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 705
    const-string v2, "CellPhone_Address"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getCellPhone_Address()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    const-string v3, ""

    goto :goto_4

    :cond_4
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getCellPhone_Address()Ljava/lang/String;

    move-result-object v3

    :goto_4
    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 706
    const-string v2, "StorageType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 708
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v2

    .line 709
    .local v2, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_7

    .line 714
    const-string v3, "HistoryDate"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getHistoryDate()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_5

    const-string v4, ""

    goto :goto_6

    :cond_5
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getHistoryDate()Ljava/lang/String;

    move-result-object v4

    :goto_6
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    const-string v3, "HistoryTime"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getHistoryTime()Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_6

    const-string v4, ""

    goto :goto_7

    :cond_6
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getHistoryTime()Ljava/lang/String;

    move-result-object v4

    :goto_7
    invoke-virtual {v0, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 717
    const-string v3, "CallHistory"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    goto :goto_a

    .line 709
    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    :cond_7
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/nforetek/bt/res/PhoneInfo;

    .line 710
    .local v4, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    const-string v5, "PhoneType"

    invoke-virtual {v4}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    const-string v6, ""

    goto :goto_8

    :cond_8
    invoke-virtual {v4}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v6

    :goto_8
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 711
    const-string v5, "PhoneNumber"

    invoke-virtual {v4}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_9

    const-string v6, ""

    goto :goto_9

    :cond_9
    invoke-virtual {v4}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v6

    :goto_9
    invoke-virtual {v0, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v4    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    goto :goto_5

    .line 719
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    :cond_a
    :goto_a
    return-void
.end method

.method public insertNumberType(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/util/ArrayList<",
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)I"
        }
    .end annotation

    .line 206
    .local p2, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const-wide/16 v0, -0x1

    .line 209
    .local v0, "row":J
    const/4 v2, 0x0

    .local v2, "x":I
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 217
    .end local v2    # "x":I
    goto :goto_1

    .line 211
    .restart local v2    # "x":I
    :cond_0
    invoke-virtual {p2, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/HashMap;

    .line 212
    .local v3, "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v4, Landroid/content/ContentValues;

    invoke-direct {v4}, Landroid/content/ContentValues;-><init>()V

    .line 213
    .local v4, "cv":Landroid/content/ContentValues;
    const-string v5, "Type"

    const-string v6, "Type"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    const-string v5, "TypeName"

    const-string v6, "TypeName"

    invoke-virtual {v3, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-virtual {v4, v5, v6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 215
    const-string v5, "PhoneType"

    const/4 v6, 0x0

    invoke-virtual {p1, v5, v6, v4}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v5
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-wide v0, v5

    .line 209
    .end local v3    # "map":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v4    # "cv":Landroid/content/ContentValues;
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 217
    .end local v2    # "x":I
    :catch_0
    move-exception v2

    .line 218
    .local v2, "e":Ljava/lang/Exception;
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 219
    iget-object v3, p0, Lcom/nforetek/util/db/DbHelperPbap;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 222
    .end local v2    # "e":Ljava/lang/Exception;
    :goto_1
    long-to-int v2, v0

    return v2
.end method

.method public insertPhoneType(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 239
    iget-object v0, p0, Lcom/nforetek/util/db/DbHelperPbap;->TAG:Ljava/lang/String;

    const-string v1, "insertPhoneType"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    const/4 v0, 0x0

    .line 244
    .local v0, "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    const/4 v1, 0x0

    .line 245
    .local v1, "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    const/4 v2, 0x0

    .line 247
    .local v2, "doc":Lorg/w3c/dom/Document;
    :try_start_0
    invoke-static {}, Ljavax/xml/parsers/DocumentBuilderFactory;->newInstance()Ljavax/xml/parsers/DocumentBuilderFactory;

    move-result-object v3

    move-object v0, v3

    .line 248
    invoke-virtual {v0}, Ljavax/xml/parsers/DocumentBuilderFactory;->newDocumentBuilder()Ljavax/xml/parsers/DocumentBuilder;

    move-result-object v3

    move-object v1, v3

    .line 250
    iget-object v3, p0, Lcom/nforetek/util/db/DbHelperPbap;->m_context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "phonetype.xml"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljavax/xml/parsers/DocumentBuilder;->parse(Ljava/io/InputStream;)Lorg/w3c/dom/Document;

    move-result-object v3
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-object v2, v3

    .line 254
    :try_start_1
    invoke-interface {v2}, Lorg/w3c/dom/Document;->getDocumentElement()Lorg/w3c/dom/Element;

    move-result-object v3

    .line 256
    .local v3, "root":Lorg/w3c/dom/Element;
    const-string v4, "phoneType"

    invoke-interface {v3, v4}, Lorg/w3c/dom/Element;->getElementsByTagName(Ljava/lang/String;)Lorg/w3c/dom/NodeList;

    move-result-object v4

    .line 259
    .local v4, "nodeList":Lorg/w3c/dom/NodeList;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 261
    .local v5, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    invoke-interface {v4}, Lorg/w3c/dom/NodeList;->getLength()I

    move-result v7

    if-lt v6, v7, :cond_1

    .line 279
    .end local v6    # "i":I
    invoke-virtual {p0, p1}, Lcom/nforetek/util/db/DbHelperPbap;->isEmptyPhoneType(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;

    move-result-object v6

    .line 280
    .local v6, "cursor":Landroid/database/Cursor;
    if-eqz v6, :cond_0

    .line 281
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 282
    const-string v7, "amount"

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v7

    invoke-interface {v6, v7}, Landroid/database/Cursor;->getInt(I)I

    move-result v7

    if-gtz v7, :cond_0

    .line 284
    invoke-virtual {p0, p1, v5}, Lcom/nforetek/util/db/DbHelperPbap;->insertNumberType(Landroid/database/sqlite/SQLiteDatabase;Ljava/util/ArrayList;)I

    .line 287
    :cond_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 289
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .end local v4    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "cursor":Landroid/database/Cursor;
    nop

    .line 296
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 298
    .end local v0    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    goto/16 :goto_2

    .line 262
    .restart local v0    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .restart local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .restart local v2    # "doc":Lorg/w3c/dom/Document;
    .restart local v3    # "root":Lorg/w3c/dom/Element;
    .restart local v4    # "nodeList":Lorg/w3c/dom/NodeList;
    .restart local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .local v6, "i":I
    :cond_1
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 263
    .local v7, "columnValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v4, v6}, Lorg/w3c/dom/NodeList;->item(I)Lorg/w3c/dom/Node;

    move-result-object v8

    .line 264
    .local v8, "nd":Lorg/w3c/dom/Node;
    invoke-interface {v8}, Lorg/w3c/dom/Node;->getAttributes()Lorg/w3c/dom/NamedNodeMap;

    move-result-object v9

    .line 265
    .local v9, "map":Lorg/w3c/dom/NamedNodeMap;
    const-string v10, "Type"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_2

    .line 266
    const-string v10, "Type"

    const-string v11, "Type"

    invoke-interface {v9, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    :cond_2
    const-string v10, "TypeName"

    invoke-interface {v9, v10}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v10

    invoke-interface {v10}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v10

    if-lez v10, :cond_3

    .line 268
    const-string v10, "TypeName"

    const-string v11, "TypeName"

    invoke-interface {v9, v11}, Lorg/w3c/dom/NamedNodeMap;->getNamedItem(Ljava/lang/String;)Lorg/w3c/dom/Node;

    move-result-object v11

    invoke-interface {v11}, Lorg/w3c/dom/Node;->getTextContent()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 269
    :cond_3
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 261
    .end local v7    # "columnValues":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v8    # "nd":Lorg/w3c/dom/Node;
    .end local v9    # "map":Lorg/w3c/dom/NamedNodeMap;
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 295
    .end local v3    # "root":Lorg/w3c/dom/Element;
    .end local v4    # "nodeList":Lorg/w3c/dom/NodeList;
    .end local v5    # "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;>;"
    .end local v6    # "i":I
    :catchall_0
    move-exception v3

    goto :goto_1

    .line 290
    :catch_0
    move-exception v3

    .line 291
    .local v3, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 292
    iget-object v4, p0, Lcom/nforetek/util/db/DbHelperPbap;->TAG:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 296
    .end local v3    # "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    goto :goto_2

    .line 295
    :goto_1
    nop

    .line 296
    const/4 v2, 0x0

    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 297
    :try_start_3
    throw v3
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 299
    .end local v0    # "docBuilderFactory":Ljavax/xml/parsers/DocumentBuilderFactory;
    .end local v1    # "docBuilder":Ljavax/xml/parsers/DocumentBuilder;
    .end local v2    # "doc":Lorg/w3c/dom/Document;
    :catch_1
    move-exception v0

    .line 300
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 302
    .end local v0    # "e":Ljava/lang/Exception;
    :goto_2
    return-void
.end method

.method public insertVcardInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/nforetek/bt/res/VCardPack;I)V
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "vcardPack"    # Lcom/nforetek/bt/res/VCardPack;
    .param p3, "type"    # I

    .line 608
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 610
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_2

    .line 618
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFullName()Ljava/lang/String;

    move-result-object v1

    .line 620
    .local v1, "name":Ljava/lang/String;
    const/4 v2, 0x0

    .line 622
    .local v2, "numName":I
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    move v2, v3

    .line 623
    iget-object v3, p0, Lcom/nforetek/util/db/DbHelperPbap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "numName : "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 624
    goto :goto_0

    .line 625
    :catch_0
    move-exception v3

    .line 629
    :goto_0
    if-gez v2, :cond_0

    .line 630
    iget-object v3, p0, Lcom/nforetek/util/db/DbHelperPbap;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "name is "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, " , automatically set it to \""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "Private Number"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    const-string v1, "Private Number"

    .line 634
    .end local v2    # "numName":I
    :cond_0
    const-string v2, "FullName"

    invoke-virtual {v0, v2, v1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 635
    const-string v2, "FirstName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 636
    const-string v2, "LastName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 637
    const-string v2, "First_StreetAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_StreetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 638
    const-string v2, "First_CityNameAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_CityNameAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 639
    const-string v2, "First_FederalStateAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_FederalStateAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 640
    const-string v2, "First_ZipCodeAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_ZipCodeAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 641
    const-string v2, "First_CountryAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_CountryAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 642
    const-string v2, "Second_StreetAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_StreetAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const-string v2, "Second_CityNameAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_CityNameAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 644
    const-string v2, "Second_FederalStateAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_FederalStateAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    const-string v2, "Second_ZipCodeAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_ZipCodeAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const-string v2, "Second_CountryAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_CountryAddress()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 647
    const-string v2, "CellPhone_Address"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getCellPhone_Address()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 648
    const-string v2, "StorageType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 650
    const-string v2, "PhoneBookContent"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v4

    .line 652
    .local v4, "row":J
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v2

    .line 653
    .local v2, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-nez v7, :cond_1

    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v4    # "row":J
    goto :goto_2

    .restart local v1    # "name":Ljava/lang/String;
    .restart local v2    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v4    # "row":J
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/nforetek/bt/res/PhoneInfo;

    .line 654
    .local v7, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    new-instance v8, Landroid/content/ContentValues;

    invoke-direct {v8}, Landroid/content/ContentValues;-><init>()V

    .line 656
    .local v8, "_cv":Landroid/content/ContentValues;
    const-string v9, "Content_ID"

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 657
    const-string v9, "Type"

    invoke-virtual {v7}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 659
    const-string v9, "Number"

    invoke-virtual {v7}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v8, v9, v10}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    const-string v9, "PhoneNumberDetail"

    invoke-virtual {p1, v9, v3, v8}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .end local v7    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    .end local v8    # "_cv":Landroid/content/ContentValues;
    goto :goto_1

    .line 664
    .end local v1    # "name":Ljava/lang/String;
    .end local v2    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v4    # "row":J
    :cond_2
    :goto_2
    return-void
.end method

.method public isEmptyPhoneType(Landroid/database/sqlite/SQLiteDatabase;)Landroid/database/Cursor;
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 232
    const-string v0, "select count(*) as amount from PhoneType"

    .line 233
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 234
    .local v1, "cursor":Landroid/database/Cursor;
    return-object v1
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 17
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 120
    move-object/from16 v0, p1

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "CREATE TABLE IF NOT EXISTS PhoneBookContent ("

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 121
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " INTEGER primary key autoincrement, "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 122
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(24), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 123
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v2, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(8), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v6, 0x3

    aget-object v2, v2, v6

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(8), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v7, 0x4

    aget-object v2, v2, v7

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(8), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v8, 0x5

    aget-object v2, v2, v8

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(20), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 127
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v9, 0x6

    aget-object v2, v2, v9

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(12), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 128
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v10, 0x7

    aget-object v2, v2, v10

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(12), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v11, 0x8

    aget-object v2, v2, v11

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(12), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 130
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v12, 0x9

    aget-object v2, v2, v12

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(30), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 131
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0xa

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(20), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0xb

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(12), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0xc

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(12), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0xd

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(12), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 135
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0xe

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(30), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0xf

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(30), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 137
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0x10

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(10), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 138
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0x11

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(50), "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 139
    sget-object v2, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v13, 0x12

    aget-object v2, v2, v13

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " varchar(50) "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ");"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 120
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 140
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 142
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v13, "CREATE TABLE IF NOT EXISTS PhoneNumberDetail ("

    invoke-direct {v2, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 143
    sget-object v13, Lcom/nforetek/util/db/DbHelperPbap;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " INTEGER primary key autoincrement, "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 144
    sget-object v13, Lcom/nforetek/util/db/DbHelperPbap;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " INTEGER, "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    sget-object v13, Lcom/nforetek/util/db/DbHelperPbap;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v13, v13, v5

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " nvarchar(5), "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    sget-object v13, Lcom/nforetek/util/db/DbHelperPbap;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v13, v13, v6

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, " nvarchar(20),"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 147
    const-string v13, "FOREIGN KEY("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/nforetek/util/db/DbHelperPbap;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v13, v13, v4

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 148
    const-string v13, ") REFERENCES "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "PhoneBookContent"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, "("

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v13, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    aget-object v13, v13, v3

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    const-string v13, ") "

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v13, ");"

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 142
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 150
    .local v2, "sql_2":Ljava/lang/String;
    invoke-virtual {v0, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 152
    new-instance v13, Ljava/lang/StringBuilder;

    const-string v14, "CREATE TABLE IF NOT EXISTS AddressDetail ("

    invoke-direct {v13, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 153
    sget-object v14, Lcom/nforetek/util/db/DbHelperPbap;->ADDRESS_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " INTEGER primary key autoincrement, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 154
    sget-object v14, Lcom/nforetek/util/db/DbHelperPbap;->ADDRESS_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v14, v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " INTEGER, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 155
    sget-object v14, Lcom/nforetek/util/db/DbHelperPbap;->ADDRESS_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v14, v14, v5

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " INTEGER, "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 156
    sget-object v14, Lcom/nforetek/util/db/DbHelperPbap;->ADDRESS_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v14, v14, v6

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, " nvarchar(100),"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 157
    const-string v14, "FOREIGN KEY("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/nforetek/util/db/DbHelperPbap;->ADDRESS_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v14, v14, v4

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 158
    const-string v14, ") REFERENCES "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "PhoneBookContent"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, "("

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v14, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    aget-object v14, v14, v3

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 159
    const-string v14, ") "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v14, ");"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 152
    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    .line 160
    .local v13, "sql_3":Ljava/lang/String;
    invoke-virtual {v0, v13}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 162
    new-instance v14, Ljava/lang/StringBuilder;

    const-string v15, "CREATE TABLE IF NOT EXISTS EmailDetail ("

    invoke-direct {v14, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 163
    sget-object v15, Lcom/nforetek/util/db/DbHelperPbap;->EMAIL_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " INTEGER primary key autoincrement, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 164
    sget-object v15, Lcom/nforetek/util/db/DbHelperPbap;->EMAIL_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " INTEGER, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 165
    sget-object v15, Lcom/nforetek/util/db/DbHelperPbap;->EMAIL_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v15, v15, v5

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " INTEGER, "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 166
    sget-object v15, Lcom/nforetek/util/db/DbHelperPbap;->EMAIL_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v15, v15, v6

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, " nvarchar(100),"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    const-string v15, "FOREIGN KEY("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/nforetek/util/db/DbHelperPbap;->EMAIL_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v15, v15, v4

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    const-string v15, ") REFERENCES "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "PhoneBookContent"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, "("

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v15, Lcom/nforetek/util/db/DbHelperPbap;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    aget-object v15, v15, v3

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 169
    const-string v15, ") "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v15, ");"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 162
    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    .line 170
    .local v14, "sql_4":Ljava/lang/String;
    invoke-virtual {v0, v14}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 172
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v12, "CREATE TABLE IF NOT EXISTS PhoneType ("

    invoke-direct {v15, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 173
    sget-object v12, Lcom/nforetek/util/db/DbHelperPbap;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    aget-object v12, v12, v3

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " nvarchar(5) , "

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 174
    sget-object v12, Lcom/nforetek/util/db/DbHelperPbap;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    aget-object v12, v12, v4

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v12, " nvarchar(26) );"

    invoke-virtual {v15, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 172
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 176
    .local v12, "sql_5":Ljava/lang/String;
    invoke-virtual {v0, v12}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 178
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v11, "CREATE TABLE IF NOT EXISTS CallHistory ("

    invoke-direct {v15, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    sget-object v11, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v11, v3

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " INTEGER primary key autoincrement, "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 180
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v3, v4

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(16), "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 181
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(8), "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 182
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v3, v6

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(8), "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v3, v7

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(30) not null, "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 184
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v3, v8

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(10) not null, "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 185
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v3, v9

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(5) not null, "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 186
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    aget-object v3, v3, v10

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(20) not null, "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 187
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    const/16 v4, 0x8

    aget-object v3, v3, v4

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(8) not null, "

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 188
    sget-object v3, Lcom/nforetek/util/db/DbHelperPbap;->CALLHISTORY_FIELD:[Ljava/lang/String;

    const/16 v4, 0x9

    aget-object v3, v3, v4

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " nvarchar(6) not null);"

    invoke-virtual {v15, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 178
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 190
    .local v3, "sql_6":Ljava/lang/String;
    invoke-virtual {v0, v3}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 192
    invoke-virtual/range {p0 .. p1}, Lcom/nforetek/util/db/DbHelperPbap;->insertPhoneType(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 193
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 198
    return-void
.end method

.method public queryCallHistoryByAddressAndStorageType(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "storageType"    # Ljava/lang/String;
    .param p4, "orderByColumn"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/res/VCardPack;",
            ">;"
        }
    .end annotation

    .line 851
    const-string v0, "select a._id, a.FullName, a.StorageType, a.PhoneNumber, a.PhoneType, a.HistoryDate, a.HistoryTime from CallHistory a where a.CellPhone_Address = ? and a.StorageType=? order by "

    .line 852
    .local v0, "sql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 854
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/nforetek/util/db/DbHelperPbap;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 856
    .local v2, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 859
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 876
    return-object v2

    .line 859
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nforetek/bt/res/VCardPack;

    .line 861
    .local v5, "pack":Lcom/nforetek/bt/res/VCardPack;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 863
    .local v6, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    invoke-virtual {v5}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-lt v7, v8, :cond_1

    .end local v5    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .end local v6    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v7    # "x":I
    goto :goto_0

    .line 865
    .restart local v5    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .restart local v6    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v7    # "x":I
    :cond_1
    invoke-virtual {v5}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v6

    .line 866
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 863
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 866
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nforetek/bt/res/PhoneInfo;

    .line 868
    .local v9, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    invoke-virtual {v9}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/nforetek/util/db/DbHelperPbap;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 869
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 870
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 871
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v9    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    goto :goto_2
.end method

.method public queryContacterByLikePhoneNumAndAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;I)Landroid/database/Cursor;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;
    .param p4, "position"    # I

    .line 445
    move-object v0, p2

    .line 446
    .local v0, "result":Ljava/lang/String;
    packed-switch p4, :pswitch_data_0

    goto :goto_0

    .line 455
    :pswitch_0
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 456
    goto :goto_0

    .line 452
    :pswitch_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 453
    goto :goto_0

    .line 449
    :pswitch_2
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "%"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 450
    nop

    .line 460
    :goto_0
    const-string v1, "select a.FullName, b.Number from PhoneBookcontent a inner join phonenumberdetail b on a._id = b.Content_id where b.Number like ? and a.cellphone_address = ? order by b.Number;"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 462
    .local v1, "cursor":Landroid/database/Cursor;
    return-object v1

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public queryContacterByPhoneNumAndAddress(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "address"    # Ljava/lang/String;

    .line 438
    const-string v0, "select FullName from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number = ?) and CellPhone_Address = ?"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 440
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryContacterInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/nforetek/bt/res/VCardList;
    .locals 18
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "phoneNum"    # Ljava/lang/String;
    .param p4, "StorageType"    # I
    .param p5, "address"    # Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move/from16 v4, p4

    .line 318
    move-object/from16 v5, p5

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v2, :cond_0

    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    if-lez v8, :cond_0

    move v8, v7

    goto :goto_0

    :cond_0
    move v8, v6

    .line 319
    .local v8, "gotName":Z
    :goto_0
    if-eqz v3, :cond_1

    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    if-lez v9, :cond_1

    move v9, v7

    goto :goto_1

    :cond_1
    move v9, v6

    .line 320
    .local v9, "gotNumber":Z
    :goto_1
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    move v6, v7

    nop

    .line 322
    .local v6, "gotBoth":Z
    :cond_2
    const/4 v7, 0x0

    .line 324
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 326
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/nforetek/util/db/DbHelperPbap;->queryContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 327
    goto :goto_2

    .line 328
    :cond_3
    if-eqz v9, :cond_4

    .line 330
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nforetek/util/db/DbHelperPbap;->queryContacterByPhoneNum(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 333
    :cond_4
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 335
    .local v10, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    const/4 v11, 0x0

    .line 338
    .local v11, "vcardPack":Lcom/nforetek/bt/res/VCardPack;
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_9

    .line 340
    move-object v12, v11

    .end local v11    # "vcardPack":Lcom/nforetek/bt/res/VCardPack;
    .local v12, "vcardPack":Lcom/nforetek/bt/res/VCardPack;
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 376
    move-object v11, v12

    goto/16 :goto_6

    .line 343
    :cond_5
    const-string v11, "_id"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 345
    .local v13, "colIdx":I
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/nforetek/util/db/DbHelperPbap;->queryPhoneNumberByContentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 347
    .local v14, "numCursor":Landroid/database/Cursor;
    const-string v11, "Number"

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 349
    .local v15, "idxNumer":I
    const-string v11, "TypeName"

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 351
    .local v11, "idxTypeName":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 353
    .local v0, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_6

    goto :goto_5

    .line 355
    :cond_6
    if-eqz v6, :cond_8

    .line 356
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 357
    nop

    .line 367
    :goto_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 368
    new-instance v1, Lcom/nforetek/bt/res/VCardPack;

    invoke-direct {v1, v7}, Lcom/nforetek/bt/res/VCardPack;-><init>(Landroid/database/Cursor;)V

    move-object v12, v1

    .line 370
    invoke-virtual {v12, v0}, Lcom/nforetek/bt/res/VCardPack;->setPhoneNumbers(Ljava/util/Set;)V

    .line 371
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 340
    .end local v0    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v11    # "idxTypeName":I
    .end local v13    # "colIdx":I
    .end local v14    # "numCursor":Landroid/database/Cursor;
    .end local v15    # "idxNumer":I
    :cond_7
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_3

    .line 359
    .restart local v0    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v11    # "idxTypeName":I
    .restart local v13    # "colIdx":I
    .restart local v14    # "numCursor":Landroid/database/Cursor;
    .restart local v15    # "idxNumer":I
    :cond_8
    new-instance v1, Lcom/nforetek/bt/res/PhoneInfo;

    invoke-direct {v1}, Lcom/nforetek/bt/res/PhoneInfo;-><init>()V

    .line 360
    .local v1, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 362
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 363
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 353
    .end local v1    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_4

    .line 376
    .end local v0    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v12    # "vcardPack":Lcom/nforetek/bt/res/VCardPack;
    .end local v13    # "colIdx":I
    .end local v14    # "numCursor":Landroid/database/Cursor;
    .end local v15    # "idxNumer":I
    .local v11, "vcardPack":Lcom/nforetek/bt/res/VCardPack;
    :cond_9
    :goto_6
    new-instance v0, Lcom/nforetek/bt/res/VCardList;

    invoke-direct {v0}, Lcom/nforetek/bt/res/VCardList;-><init>()V

    .line 377
    .local v0, "vcardList":Lcom/nforetek/bt/res/VCardList;
    invoke-virtual {v0, v10}, Lcom/nforetek/bt/res/VCardList;->setVcardPacks(Ljava/util/List;)V

    .line 379
    return-object v0
.end method

.method public queryContactersInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "storageType"    # Ljava/lang/String;
    .param p4, "columnName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/res/VCardPack;",
            ">;"
        }
    .end annotation

    .line 771
    const-string v0, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName) and StorageType=? and CellPhone_Address = ? order by "

    .line 772
    .local v0, "sql":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    const/4 v4, 0x1

    aput-object p3, v2, v4

    const/4 v4, 0x2

    aput-object p3, v2, v4

    const/4 v4, 0x3

    aput-object p2, v2, v4

    invoke-virtual {p1, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 774
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/nforetek/util/db/DbHelperPbap;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 776
    .local v2, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 779
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 796
    return-object v2

    .line 779
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nforetek/bt/res/VCardPack;

    .line 781
    .local v5, "pack":Lcom/nforetek/bt/res/VCardPack;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 783
    .local v6, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    const/4 v7, 0x0

    .local v7, "x":I
    :goto_1
    invoke-virtual {v5}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v8

    invoke-interface {v8}, Ljava/util/Set;->size()I

    move-result v8

    if-lt v7, v8, :cond_1

    .end local v5    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .end local v6    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v7    # "x":I
    goto :goto_0

    .line 785
    .restart local v5    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .restart local v6    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v7    # "x":I
    :cond_1
    invoke-virtual {v5}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v6

    .line 786
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 783
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 786
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nforetek/bt/res/PhoneInfo;

    .line 788
    .local v9, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    invoke-virtual {v9}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/nforetek/util/db/DbHelperPbap;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 789
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 790
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 791
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v9    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    goto :goto_2
.end method

.method public queryNameByPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneNum"    # Ljava/lang/String;

    .line 957
    invoke-virtual {p0}, Lcom/nforetek/util/db/DbHelperPbap;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 959
    .local v0, "db":Landroid/database/sqlite/SQLiteDatabase;
    const-string v1, "select FullName from PhoneBookContent where _id = (select Content_ID from PhoneNumberDetail where Number like ? limit 1)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "%"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 962
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v2, "N/A"

    .line 964
    .local v2, "contacter":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 966
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 969
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 970
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 972
    return-object v2
.end method

.method public queryNumberDetailByPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneNum"    # Ljava/lang/String;

    .line 468
    const-string v0, "select a.*, b.TypeName from PhoneNumberDetail.a inner join PhoneType b on a.Type = b.Type where Number = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 470
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryPhoneDataByPage(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;IILjava/lang/String;)Ljava/util/List;
    .locals 14
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "whichPage"    # I
    .param p4, "pageSize"    # I
    .param p5, "storageType"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/sqlite/SQLiteDatabase;",
            "Ljava/lang/String;",
            "II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/nforetek/bt/res/VCardPack;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    .line 730
    const-string v2, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName limit 10 offset ?) and StorageType=? and CellPhone_Address = ? order by FullName"

    .line 732
    .local v2, "sql":Ljava/lang/String;
    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    aput-object p2, v3, v4

    const/4 v5, 0x1

    aput-object p5, v3, v5

    mul-int v6, p3, p4

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v3, v7

    const/4 v6, 0x3

    aput-object p5, v3, v6

    const/4 v6, 0x4

    aput-object p2, v3, v6

    invoke-virtual {v1, v2, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 734
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-direct {v0, v3}, Lcom/nforetek/util/db/DbHelperPbap;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v6

    .line 736
    .local v6, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 739
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 756
    return-object v6

    .line 739
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nforetek/bt/res/VCardPack;

    .line 741
    .local v8, "pack":Lcom/nforetek/bt/res/VCardPack;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 743
    .local v9, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    const/4 v10, 0x0

    .local v10, "x":I
    :goto_1
    invoke-virtual {v8}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Set;->size()I

    move-result v11

    if-lt v10, v11, :cond_1

    .end local v8    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .end local v9    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v10    # "x":I
    goto :goto_0

    .line 745
    .restart local v8    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .restart local v9    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v10    # "x":I
    :cond_1
    invoke-virtual {v8}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v9

    .line 746
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 743
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 746
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nforetek/bt/res/PhoneInfo;

    .line 748
    .local v12, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    invoke-virtual {v12}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/nforetek/util/db/DbHelperPbap;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 749
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 750
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    goto :goto_3

    .line 751
    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 746
    .end local v12    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    move-object v0, p0

    goto :goto_2
.end method

.method public queryPhoneNumberByContentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ContentId"    # Ljava/lang/String;

    .line 475
    const-string v0, "select a.*, b.TypeName as TypeName from PhoneNumberDetail a inner join PhoneType b on a.Type = b.Type where a.Content_ID = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 476
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneType"    # Ljava/lang/String;

    .line 417
    if-nez p2, :cond_0

    .line 418
    const-string p2, "C"

    .line 419
    :cond_0
    const-string v0, "select TypeName from PhoneType where Type = ? "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 420
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryTotalAmount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 942
    const-string v0, "select a.FullName from PhoneBookContent a where a.CellPhone_Address=? and StorageType=? group by a.FullName"

    .line 943
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 945
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 946
    .local v2, "amount":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 948
    return v2
.end method
