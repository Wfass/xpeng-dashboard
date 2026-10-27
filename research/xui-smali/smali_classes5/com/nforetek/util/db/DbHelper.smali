.class public Lcom/nforetek/util/db/DbHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;
.source "DbHelper.java"


# static fields
.field private static final CALLHISTORY_CONTENT:Ljava/lang/String; = "CallHistory"

.field private static final DATABASE_NAME:Ljava/lang/String; = "db_pbap"

.field private static final DATABASE_VERSION:I = 0x1

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
    .locals 16

    .line 47
    nop

    .line 48
    const-string v0, "_id"

    .line 49
    const-string v1, "FullName"

    .line 50
    const-string v2, "FirstName"

    .line 51
    const-string v3, "LastName"

    .line 52
    const-string v4, "First_StreetAddress"

    .line 53
    const-string v5, "First_CityNameAddress"

    .line 54
    const-string v6, "First_FederalStateAddress"

    .line 55
    const-string v7, "First_ZipCodeAddress"

    .line 56
    const-string v8, "First_CountryAddress"

    .line 57
    const-string v9, "Second_StreetAddress"

    .line 58
    const-string v10, "Second_CityNameAddress"

    .line 59
    const-string v11, "Second_FederalStateAddress"

    .line 60
    const-string v12, "Second_ZipCodeAddress"

    .line 61
    const-string v13, "Second_CountryAddress"

    .line 62
    const-string v14, "CellPhone_Address"

    .line 63
    const-string v15, "StorageType"

    .line 47
    filled-new-array/range {v0 .. v15}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    .line 66
    const-string v0, "_id"

    const-string v1, "Content_ID"

    const-string v2, "Type"

    const-string v3, "Number"

    filled-new-array {v0, v1, v2, v3}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    .line 69
    const-string v0, "Type"

    const-string v1, "TypeName"

    filled-new-array {v0, v1}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/nforetek/util/db/DbHelper;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .line 76
    const-string v0, "db_pbap"

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v1}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    .line 24
    iput-boolean v1, p0, Lcom/nforetek/util/db/DbHelper;->D:Z

    .line 25
    const-string v0, "nfore DBHelper"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->TAG:Ljava/lang/String;

    .line 712
    const-string v0, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName limit 10 offset ?) and StorageType=? and CellPhone_Address = ? order by FullName"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_PHONEDATA_BY_PAGE:Ljava/lang/String;

    .line 718
    const-string v0, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName) and StorageType=? and CellPhone_Address = ? order by "

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_CONTACTERS:Ljava/lang/String;

    .line 724
    nop

    .line 725
    const-string v0, "select a._id, a.FullName, a.StorageType, a.PhoneNumber, a.PhoneType, a.HistoryDate, a.HistoryTime from CallHistory a where a.CellPhone_Address = ? and a.StorageType=? order by "

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_CALLHISTORY_BY_ADDRESS_STORAGETYPE:Ljava/lang/String;

    .line 737
    nop

    .line 738
    const-string v0, "select * from CallHistory a where a.StorageType = ? and a.CellPhone_Address = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_CALLHISTORY_BY_SPECIFIED_COLUMNS:Ljava/lang/String;

    .line 742
    const-string v0, "select a.*, b.TypeName as TypeName from PhoneNumberDetail a inner join PhoneType b on a.Type = b.Type where a.Content_ID = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_PHONE_BY_CONTENT_ID:Ljava/lang/String;

    .line 745
    const-string v0, "select * from PhoneBookContent where FullName like ? and StorageType = ? and CellPhone_Address = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_PHONEBOOKCONTENT:Ljava/lang/String;

    .line 748
    const-string v0, "select * from PhoneBookContent where _id in (select Content_ID from PhoneNumberDetail where Number like ?) and StorageType = ? and CellPhone_Address = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_PHONEBOOKCONTENT_BY_PHONENUM:Ljava/lang/String;

    .line 752
    const-string v0, "select a.*, b.TypeName from PhoneNumberDetail.a inner join PhoneType b on a.Type = b.Type where Number = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_PHONENUMBERDETAIL:Ljava/lang/String;

    .line 755
    const-string v0, "delete from PhoneBookContent where FullName = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_DELETE_CONTACTER:Ljava/lang/String;

    .line 758
    const-string v0, "delete from PhoneNumberDetail where Number = ?"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_DELETE_PHONENUMBER:Ljava/lang/String;

    .line 761
    const-string v0, "delete from PhoneNumberDetail where Content_ID in (select _id from PhoneBookContent where FullName = ?)"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_DELETE_PHONENUMBER_BY_FULLNAME:Ljava/lang/String;

    .line 770
    const-string v0, "select TypeName from PhoneType where Type = ? "

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_PHONETYPE_NAME:Ljava/lang/String;

    .line 772
    const-string v0, "select a.FullName from PhoneBookContent a where a.CellPhone_Address=? and StorageType=? group by a.FullName"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_EXPRESS_TOTAL:Ljava/lang/String;

    .line 775
    const-string v0, "select FullName from PhoneBookContent where _id = (select Content_ID from PhoneNumberDetail where Number like ? limit 1)"

    iput-object v0, p0, Lcom/nforetek/util/db/DbHelper;->SQL_QUERY_CONTACTER:Ljava/lang/String;

    .line 77
    iput-object p1, p0, Lcom/nforetek/util/db/DbHelper;->m_context:Landroid/content/Context;

    .line 78
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

    .line 618
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 620
    .local v0, "items":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 622
    :cond_0
    new-instance v1, Lcom/nforetek/bt/res/VCardPack;

    invoke-direct {v1}, Lcom/nforetek/bt/res/VCardPack;-><init>()V

    .line 623
    .local v1, "pack":Lcom/nforetek/bt/res/VCardPack;
    const-string v2, "FullName"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nforetek/bt/res/VCardPack;->setFullName(Ljava/lang/String;)V

    .line 625
    const-string v2, "_id"

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v2

    invoke-interface {p1, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/nforetek/bt/res/VCardPack;->set_id(I)V

    .line 627
    new-instance v2, Lcom/nforetek/bt/res/PhoneInfo;

    invoke-direct {v2}, Lcom/nforetek/bt/res/PhoneInfo;-><init>()V

    .line 629
    .local v2, "pInfo":Lcom/nforetek/bt/res/PhoneInfo;
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 631
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    const-string v4, ""

    .line 632
    .local v4, "storageType":Ljava/lang/String;
    const/4 v5, -0x1

    .line 634
    .local v5, "int_StorageType":I
    const-string v6, "StorageType"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 635
    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 637
    const/4 v6, 0x3

    if-ge v5, v6, :cond_1

    if-lez v5, :cond_1

    .line 638
    const-string v6, "Number"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 639
    const-string v6, "Type"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneType(Ljava/lang/String;)V

    .line 640
    goto :goto_0

    .line 641
    :cond_1
    if-lt v5, v6, :cond_2

    const/4 v6, 0x5

    if-gt v5, v6, :cond_2

    .line 642
    const-string v6, "PhoneNumber"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 643
    const-string v6, "PhoneType"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneType(Ljava/lang/String;)V

    .line 644
    const-string v6, "HistoryDate"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nforetek/bt/res/VCardPack;->setHistoryDate(Ljava/lang/String;)V

    .line 645
    const-string v6, "HistoryTime"

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v6

    invoke-interface {p1, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/nforetek/bt/res/VCardPack;->setHistoryTime(Ljava/lang/String;)V

    .line 648
    :cond_2
    :goto_0
    invoke-interface {v3, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 649
    invoke-virtual {v1, v3}, Lcom/nforetek/bt/res/VCardPack;->setPhoneNumbers(Ljava/util/Set;)V

    .line 650
    invoke-virtual {v1, v4}, Lcom/nforetek/bt/res/VCardPack;->setStorageType(Ljava/lang/String;)V

    .line 652
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 654
    .end local v1    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .end local v2    # "pInfo":Lcom/nforetek/bt/res/PhoneInfo;
    .end local v3    # "set":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v4    # "storageType":Ljava/lang/String;
    .end local v5    # "int_StorageType":I
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_0

    .line 657
    :cond_3
    return-object v0
.end method

.method private queryContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fullName"    # Ljava/lang/String;
    .param p3, "StorageType"    # I
    .param p4, "address"    # Ljava/lang/String;

    .line 247
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

    .line 248
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method private queryContacterByPhoneNum(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;
    .locals 4
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneNum"    # Ljava/lang/String;
    .param p3, "StorageType"    # I
    .param p4, "address"    # Ljava/lang/String;

    .line 253
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

    .line 255
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

    .line 549
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 550
    .local v0, "queryStrings":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 551
    invoke-virtual {v0, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 553
    const-string v1, "select * from CallHistory a where a.StorageType = ? and a.CellPhone_Address = ?"

    .line 555
    .local v1, "sql":Ljava/lang/String;
    invoke-virtual {p4}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_0

    .line 557
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " and a.HistoryDate like ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 558
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 561
    :cond_0
    invoke-virtual {p5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 563
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " and a.HistoryTime like ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 564
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 567
    :cond_1
    invoke-virtual {p6}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_2

    .line 569
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v3, " and a.PhoneNumber like ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 570
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 573
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    new-array v2, v2, [Ljava/lang/String;

    .line 574
    .local v2, "queryColumns":[Ljava/lang/String;
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/String;

    invoke-virtual {p1, v1, v3}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 576
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v3}, Lcom/nforetek/util/db/DbHelper;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v4

    .line 577
    .local v4, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 579
    new-instance v5, Lcom/nforetek/bt/res/VCardList;

    invoke-direct {v5}, Lcom/nforetek/bt/res/VCardList;-><init>()V

    .line 580
    .local v5, "vcardList":Lcom/nforetek/bt/res/VCardList;
    invoke-virtual {v5, v4}, Lcom/nforetek/bt/res/VCardList;->setVcardPacks(Ljava/util/List;)V

    .line 582
    return-object v5
.end method

.method public deleteAllTableContent(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 786
    const-string v0, "PhoneNumberDetail"

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 787
    const-string v0, "PhoneBookContent"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 788
    const-string v0, "CallHistory"

    invoke-virtual {p1, v0, v1, v1}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method public deleteCallHistoryById(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # I

    .line 666
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

    .line 667
    return-void
.end method

.method public deleteCallHistoryInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 5
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "StorageType"    # I

    .line 385
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

    .line 387
    .local v0, "delCount_Content":I
    return v0
.end method

.method public deleteContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fullName"    # Ljava/lang/String;

    .line 275
    const-string v0, "delete from PhoneBookContent where FullName = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 276
    return-void
.end method

.method public deleteContacterById(Landroid/database/sqlite/SQLiteDatabase;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "id"    # I

    .line 661
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

    .line 662
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

    .line 663
    return-void
.end method

.method public deletePhoneNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneNum"    # Ljava/lang/String;

    .line 281
    const-string v0, "delete from PhoneNumberDetail where Number = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 282
    return-void
.end method

.method public deletePhoneNumberByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)V
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "fullName"    # Ljava/lang/String;

    .line 286
    const-string v0, "delete from PhoneNumberDetail where Content_ID in (select _id from PhoneBookContent where FullName = ?)"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 287
    return-void
.end method

.method public deleteVcardInfo(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
    .locals 12
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "StorageType"    # I

    .line 357
    const/4 v0, 0x0

    .line 360
    .local v0, "delCount_Content":I
    const-string v2, "PhoneBookContent"

    const-string v1, "_id"

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

    .line 362
    .local v1, "cursor":Landroid/database/Cursor;
    const/4 v2, 0x0

    .line 363
    .local v2, "delCount_Number":I
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_1

    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 365
    move v3, v2

    move v2, v10

    .line 367
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

    .line 368
    add-int/2addr v3, v2

    .line 369
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-nez v4, :cond_0

    .line 373
    .end local v2    # "tmpCount":I
    move v2, v3

    .end local v3    # "delCount_Number":I
    .local v2, "delCount_Number":I
    :cond_1
    if-ltz v2, :cond_2

    .line 375
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

    .line 377
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 379
    return v0
.end method

.method public insertCallHistoryInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/nforetek/bt/res/VCardPack;I)V
    .locals 6
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "vcardPack"    # Lcom/nforetek/bt/res/VCardPack;
    .param p3, "type"    # I

    .line 438
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 440
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 441
    const-string v1, "FullName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 442
    const-string v1, "FirstName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 443
    const-string v1, "LastName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 444
    const-string v1, "CellPhone_Address"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getCellPhone_Address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    const-string v1, "StorageType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 447
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v1

    .line 448
    .local v1, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_0

    .line 453
    const-string v2, "HistoryDate"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getHistoryDate()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    const-string v2, "HistoryTime"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getHistoryTime()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 456
    const-string v2, "CallHistory"

    const/4 v3, 0x0

    invoke-virtual {p1, v2, v3, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .end local v1    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    goto :goto_1

    .line 448
    .restart local v1    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/nforetek/bt/res/PhoneInfo;

    .line 449
    .local v3, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    const-string v4, "PhoneType"

    invoke-virtual {v3}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 450
    const-string v4, "PhoneNumber"

    invoke-virtual {v3}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .end local v3    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    goto :goto_0

    .line 458
    .end local v1    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    :cond_1
    :goto_1
    return-void
.end method

.method public insertVcardInfo(Landroid/database/sqlite/SQLiteDatabase;Lcom/nforetek/bt/res/VCardPack;I)V
    .locals 10
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "vcardPack"    # Lcom/nforetek/bt/res/VCardPack;
    .param p3, "type"    # I

    .line 397
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 399
    .local v0, "cv":Landroid/content/ContentValues;
    if-eqz p2, :cond_1

    .line 400
    const-string v1, "FullName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFullName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 401
    const-string v1, "FirstName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirstName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 402
    const-string v1, "LastName"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getLastName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 403
    const-string v1, "First_StreetAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_StreetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 404
    const-string v1, "First_CityNameAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_CityNameAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 405
    const-string v1, "First_FederalStateAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_FederalStateAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    const-string v1, "First_ZipCodeAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_ZipCodeAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 407
    const-string v1, "First_CountryAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getFirst_CountryAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    const-string v1, "Second_StreetAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_StreetAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 409
    const-string v1, "Second_CityNameAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_CityNameAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const-string v1, "Second_FederalStateAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_FederalStateAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 411
    const-string v1, "Second_ZipCodeAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_ZipCodeAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    const-string v1, "Second_CountryAddress"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getSecond_CountryAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    const-string v1, "CellPhone_Address"

    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getCellPhone_Address()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 414
    const-string v1, "StorageType"

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 416
    const-string v1, "PhoneBookContent"

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2, v0}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v3

    .line 418
    .local v3, "row":J
    invoke-virtual {p2}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v1

    .line 419
    .local v1, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_0

    .end local v1    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v3    # "row":J
    goto :goto_1

    .restart local v1    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v3    # "row":J
    :cond_0
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/nforetek/bt/res/PhoneInfo;

    .line 420
    .local v6, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    .line 422
    .local v7, "_cv":Landroid/content/ContentValues;
    const-string v8, "Content_ID"

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 423
    const-string v8, "Type"

    invoke-virtual {v6}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 425
    const-string v8, "Number"

    invoke-virtual {v6}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneNumber()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 427
    const-string v8, "PhoneNumberDetail"

    invoke-virtual {p1, v8, v2, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    .end local v6    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    .end local v7    # "_cv":Landroid/content/ContentValues;
    goto :goto_0

    .line 430
    .end local v1    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .end local v3    # "row":J
    :cond_1
    :goto_1
    return-void
.end method

.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 7
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;

    .line 86
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "CREATE TABLE IF NOT EXISTS PhoneBookContent ("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 87
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " INTEGER primary key autoincrement, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(16), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v4, 0x2

    aget-object v1, v1, v4

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(8), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 90
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(8), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 91
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v6, 0x4

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(20), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 92
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v6, 0x5

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(12), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 93
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v6, 0x6

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(12), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/4 v6, 0x7

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(12), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v6, 0x8

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(30), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 96
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v6, 0x9

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(20), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 97
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v6, 0xa

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(12), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v6, 0xb

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(12), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v6, 0xc

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(12), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 100
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v6, 0xd

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(30), "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v6, 0xe

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(30) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    sget-object v1, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    const/16 v6, 0xf

    aget-object v1, v1, v6

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " varchar(10) "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 86
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 103
    .local v0, "sql":Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 105
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v6, "CREATE TABLE IF NOT EXISTS PhoneNumberDetail ("

    invoke-direct {v1, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 106
    sget-object v6, Lcom/nforetek/util/db/DbHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " INTEGER primary key autoincrement, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 107
    sget-object v6, Lcom/nforetek/util/db/DbHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v6, v6, v3

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " INTEGER, "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 108
    sget-object v6, Lcom/nforetek/util/db/DbHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v4, v6, v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nvarchar(5), "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    sget-object v4, Lcom/nforetek/util/db/DbHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v4, v4, v5

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " nvarchar(20),"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    const-string v4, "FOREIGN KEY("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/nforetek/util/db/DbHelper;->PHONENUMBER_DETAIL_FIELD:[Ljava/lang/String;

    aget-object v4, v4, v3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    const-string v4, ") REFERENCES "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "PhoneBookContent"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "("

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Lcom/nforetek/util/db/DbHelper;->PHONEBOOK_CONTENT_FIELD:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 112
    const-string v4, ") "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ");"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 105
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 113
    .local v1, "sql_2":Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 115
    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "CREATE TABLE IF NOT EXISTS PhoneType ("

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 116
    sget-object v5, Lcom/nforetek/util/db/DbHelper;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    aget-object v2, v5, v2

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(5) , "

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 117
    sget-object v2, Lcom/nforetek/util/db/DbHelper;->PHONE_TYPE_FIELD:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " nvarchar(26) );"

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 115
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 119
    .local v2, "sql_3":Ljava/lang/String;
    invoke-virtual {p1, v2}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 0
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "oldVersion"    # I
    .param p3, "newVersion"    # I

    .line 125
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

    .line 587
    const-string v0, "select a._id, a.FullName, a.StorageType, a.PhoneNumber, a.PhoneType, a.HistoryDate, a.HistoryTime from CallHistory a where a.CellPhone_Address = ? and a.StorageType=? order by "

    .line 588
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

    .line 590
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/nforetek/util/db/DbHelper;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 592
    .local v2, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 595
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 612
    return-object v2

    .line 595
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nforetek/bt/res/VCardPack;

    .line 597
    .local v5, "pack":Lcom/nforetek/bt/res/VCardPack;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 599
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

    .line 601
    .restart local v5    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .restart local v6    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v7    # "x":I
    :cond_1
    invoke-virtual {v5}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v6

    .line 602
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 599
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 602
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nforetek/bt/res/PhoneInfo;

    .line 604
    .local v9, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    invoke-virtual {v9}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/nforetek/util/db/DbHelper;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 605
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 606
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 607
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v9    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    goto :goto_2
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

    .line 141
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

    .line 142
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

    .line 143
    .local v9, "gotNumber":Z
    :goto_1
    if-eqz v8, :cond_2

    if-eqz v9, :cond_2

    move v6, v7

    nop

    .line 145
    .local v6, "gotBoth":Z
    :cond_2
    const/4 v7, 0x0

    .line 147
    .local v7, "cursor":Landroid/database/Cursor;
    if-eqz v8, :cond_3

    .line 149
    invoke-direct {v0, v1, v2, v4, v5}, Lcom/nforetek/util/db/DbHelper;->queryContacterByFullName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 150
    goto :goto_2

    .line 151
    :cond_3
    if-eqz v9, :cond_4

    .line 153
    invoke-direct {v0, v1, v3, v4, v5}, Lcom/nforetek/util/db/DbHelper;->queryContacterByPhoneNum(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;ILjava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    .line 156
    :cond_4
    :goto_2
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    .line 158
    .local v10, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    const/4 v11, 0x0

    .line 161
    .local v11, "vcardPack":Lcom/nforetek/bt/res/VCardPack;
    if-eqz v7, :cond_9

    invoke-interface {v7}, Landroid/database/Cursor;->getCount()I

    move-result v12

    if-lez v12, :cond_9

    .line 163
    move-object v12, v11

    .end local v11    # "vcardPack":Lcom/nforetek/bt/res/VCardPack;
    .local v12, "vcardPack":Lcom/nforetek/bt/res/VCardPack;
    :goto_3
    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v11

    if-nez v11, :cond_5

    .line 198
    move-object v11, v12

    goto/16 :goto_6

    .line 166
    :cond_5
    const-string v11, "_id"

    invoke-interface {v7, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v13

    .line 168
    .local v13, "colIdx":I
    invoke-interface {v7, v13}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v0, v1, v11}, Lcom/nforetek/util/db/DbHelper;->queryPhoneNumberByContentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v14

    .line 170
    .local v14, "numCursor":Landroid/database/Cursor;
    const-string v11, "Number"

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v15

    .line 172
    .local v15, "idxNumer":I
    const-string v11, "TypeName"

    invoke-interface {v14, v11}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v11

    .line 173
    .local v11, "idxTypeName":I
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 175
    .local v0, "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    :goto_4
    invoke-interface {v14}, Landroid/database/Cursor;->moveToNext()Z

    move-result v16

    if-nez v16, :cond_6

    goto :goto_5

    .line 177
    :cond_6
    if-eqz v6, :cond_8

    .line 178
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_8

    .line 179
    nop

    .line 189
    :goto_5
    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v1

    if-lez v1, :cond_7

    .line 190
    new-instance v1, Lcom/nforetek/bt/res/VCardPack;

    invoke-direct {v1, v7}, Lcom/nforetek/bt/res/VCardPack;-><init>(Landroid/database/Cursor;)V

    move-object v12, v1

    .line 192
    invoke-virtual {v12, v0}, Lcom/nforetek/bt/res/VCardPack;->setPhoneNumbers(Ljava/util/Set;)V

    .line 193
    invoke-interface {v10, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 163
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

    .line 181
    .restart local v0    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v11    # "idxTypeName":I
    .restart local v13    # "colIdx":I
    .restart local v14    # "numCursor":Landroid/database/Cursor;
    .restart local v15    # "idxNumer":I
    :cond_8
    new-instance v1, Lcom/nforetek/bt/res/PhoneInfo;

    invoke-direct {v1}, Lcom/nforetek/bt/res/PhoneInfo;-><init>()V

    .line 182
    .local v1, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    invoke-interface {v14, v15}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneNumber(Ljava/lang/String;)V

    .line 184
    invoke-interface {v14, v11}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 185
    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 175
    .end local v1    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    goto :goto_4

    .line 198
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

    .line 199
    .local v0, "vcardList":Lcom/nforetek/bt/res/VCardList;
    invoke-virtual {v0, v10}, Lcom/nforetek/bt/res/VCardList;->setVcardPacks(Ljava/util/List;)V

    .line 201
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

    .line 507
    const-string v0, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName) and StorageType=? and CellPhone_Address = ? order by "

    .line 508
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

    .line 510
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-direct {p0, v1}, Lcom/nforetek/util/db/DbHelper;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v2

    .line 512
    .local v2, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 515
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_0

    .line 532
    return-object v2

    .line 515
    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/nforetek/bt/res/VCardPack;

    .line 517
    .local v5, "pack":Lcom/nforetek/bt/res/VCardPack;
    new-instance v6, Ljava/util/HashSet;

    invoke-direct {v6}, Ljava/util/HashSet;-><init>()V

    .line 519
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

    .line 521
    .restart local v5    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .restart local v6    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v7    # "x":I
    :cond_1
    invoke-virtual {v5}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v6

    .line 522
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-nez v9, :cond_2

    .line 519
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 522
    :cond_2
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/nforetek/bt/res/PhoneInfo;

    .line 524
    .local v9, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    invoke-virtual {v9}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p0, p1, v10}, Lcom/nforetek/util/db/DbHelper;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 525
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 526
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    .line 527
    :cond_3
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .end local v9    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    goto :goto_2
.end method

.method public queryNameByPhoneNum(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
    .param p1, "phoneNum"    # Ljava/lang/String;

    .line 693
    invoke-virtual {p0}, Lcom/nforetek/util/db/DbHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    .line 695
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

    .line 698
    .local v1, "cursor":Landroid/database/Cursor;
    const-string v2, "N/A"

    .line 700
    .local v2, "contacter":Ljava/lang/String;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 702
    invoke-interface {v1, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 705
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 706
    invoke-virtual {v0}, Landroid/database/sqlite/SQLiteDatabase;->close()V

    .line 708
    return-object v2
.end method

.method public queryNumberDetailByPhoneNumber(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneNum"    # Ljava/lang/String;

    .line 262
    const-string v0, "select a.*, b.TypeName from PhoneNumberDetail.a inner join PhoneType b on a.Type = b.Type where Number = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 264
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

    .line 468
    const-string v2, "select a._id, a.FullName, a.StorageType, b.Number, b.Type from PhoneBookContent a inner join PhoneNumberDetail b on a._id = b.Content_ID where a.FullName in (select FullName from PhoneBookContent where CellPhone_Address = ? and StorageType=? group by FullName limit 10 offset ?) and StorageType=? and CellPhone_Address = ? order by FullName"

    .line 470
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

    .line 472
    .local v3, "cursor":Landroid/database/Cursor;
    invoke-direct {v0, v3}, Lcom/nforetek/util/db/DbHelper;->collectionData(Landroid/database/Cursor;)Ljava/util/List;

    move-result-object v6

    .line 474
    .local v6, "vcardPacks":Ljava/util/List;, "Ljava/util/List<Lcom/nforetek/bt/res/VCardPack;>;"
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 477
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 494
    return-object v6

    .line 477
    :cond_0
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/nforetek/bt/res/VCardPack;

    .line 479
    .local v8, "pack":Lcom/nforetek/bt/res/VCardPack;
    new-instance v9, Ljava/util/HashSet;

    invoke-direct {v9}, Ljava/util/HashSet;-><init>()V

    .line 481
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

    .line 483
    .restart local v8    # "pack":Lcom/nforetek/bt/res/VCardPack;
    .restart local v9    # "phoneInfos":Ljava/util/Set;, "Ljava/util/Set<Lcom/nforetek/bt/res/PhoneInfo;>;"
    .restart local v10    # "x":I
    :cond_1
    invoke-virtual {v8}, Lcom/nforetek/bt/res/VCardPack;->getPhoneNumbers()Ljava/util/Set;

    move-result-object v9

    .line 484
    invoke-interface {v9}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-nez v12, :cond_2

    .line 481
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 484
    :cond_2
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/nforetek/bt/res/PhoneInfo;

    .line 486
    .local v12, "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    invoke-virtual {v12}, Lcom/nforetek/bt/res/PhoneInfo;->getPhoneType()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v1, v4}, Lcom/nforetek/util/db/DbHelper;->queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 487
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 488
    const/4 v4, 0x0

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v12, v0}, Lcom/nforetek/bt/res/PhoneInfo;->setPhoneTypeName(Ljava/lang/String;)V

    goto :goto_3

    .line 489
    :cond_3
    const/4 v4, 0x0

    :goto_3
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    .line 484
    .end local v12    # "phoneInfo":Lcom/nforetek/bt/res/PhoneInfo;
    move-object v0, p0

    goto :goto_2
.end method

.method public queryPhoneNumberByContentId(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "ContentId"    # Ljava/lang/String;

    .line 269
    const-string v0, "select a.*, b.TypeName as TypeName from PhoneNumberDetail a inner join PhoneType b on a.Type = b.Type where a.Content_ID = ?"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 270
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryPhoneTypeName(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "phoneType"    # Ljava/lang/String;

    .line 239
    if-nez p2, :cond_0

    .line 240
    const-string p2, "C"

    .line 241
    :cond_0
    const-string v0, "select TypeName from PhoneType where Type = ? "

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 242
    .local v0, "cursor":Landroid/database/Cursor;
    return-object v0
.end method

.method public queryTotalAmount(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .param p1, "db"    # Landroid/database/sqlite/SQLiteDatabase;
    .param p2, "address"    # Ljava/lang/String;
    .param p3, "type"    # Ljava/lang/String;

    .line 678
    const-string v0, "select a.FullName from PhoneBookContent a where a.CellPhone_Address=? and StorageType=? group by a.FullName"

    .line 679
    .local v0, "sql":Ljava/lang/String;
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    .line 681
    .local v1, "cursor":Landroid/database/Cursor;
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    move-result v2

    .line 682
    .local v2, "amount":I
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 684
    return v2
.end method
