.class public Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;
.super Ljava/lang/Object;
.source "ResourceProviderContract.java"


# static fields
.field public static final ASSEMBLE_PATH:Ljava/lang/String; = "assemble"

.field public static final ASSEMBLE_URI:Landroid/net/Uri;

.field public static final AUTHORITY:Ljava/lang/String; = "resource_service"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final INDEX_ASSEMBLE_CALLING:I = 0x2

.field public static final INDEX_ASSEMBLE_ICON_URL:I = 0x4

.field public static final INDEX_ASSEMBLE_KEY:I = 0x0

.field public static final INDEX_ASSEMBLE_NAME:I = 0x3

.field public static final INDEX_ASSEMBLE_PROGRESS:I = 0x6

.field public static final INDEX_ASSEMBLE_STATE:I = 0x5

.field public static final INDEX_ASSEMBLE_TYPE:I = 0x1

.field public static final LOCAL_STATE_INDEX_KEY:I = 0x1

.field public static final LOCAL_STATE_INDEX_STATE:I = 0x2

.field public static final LOCAL_STATE_INDEX_TYPE:I = 0x0

.field public static final LOCAL_STATE_URI:Landroid/net/Uri;

.field public static final LOCAL_STATE_URI_PATH_STATES:Ljava/lang/String; = "local_states"

.field public static final STATE_DEFAULT:I = 0x0

.field public static final STATE_NEW_INSTALLED:I = 0x3e9

.field private static final TAG:Ljava/lang/String; = "ResourceProviderContrac"

.field private static final URI_PATH_ROOT:Ljava/lang/String; = "content://resource_service/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "content://resource_service/assemble"

    .line 24
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->ASSEMBLE_URI:Landroid/net/Uri;

    const-string v0, "content://resource_service/local_states"

    .line 37
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->LOCAL_STATE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static clearState(Landroid/content/Context;ILjava/lang/String;)V
    .locals 3

    .line 48
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    .line 49
    new-instance v0, Landroid/content/ContentValues;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/content/ContentValues;-><init>(I)V

    const-string v1, "key"

    .line 50
    invoke-virtual {v0, v1, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 51
    sget-object p2, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->LOCAL_STATE_URI:Landroid/net/Uri;

    int-to-long v1, p1

    invoke-static {p2, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p1

    const/4 p2, 0x0

    .line 54
    :try_start_0
    invoke-virtual {p0, p1, v0, p2, p2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    .line 56
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "clearState: update ex:"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "ResourceProviderContrac"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public static queryIsAssembling(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 6

    .line 62
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object p0, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->ASSEMBLE_URI:Landroid/net/Uri;

    int-to-long v1, p2

    invoke-static {p0, v1, v2}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const/4 p0, 0x1

    new-array v4, p0, [Ljava/lang/String;

    const/4 p2, 0x0

    aput-object p1, v4, p2

    const/4 v2, 0x0

    const-string v3, "key LIKE ?"

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    const-string v1, "ResourceProviderContrac"

    if-eqz v0, :cond_3

    .line 67
    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v2

    if-eqz v2, :cond_3

    .line 69
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v2, 0x5

    .line 70
    invoke-interface {v0, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    .line 71
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryIsAssembling finish: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v3, " state="

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 72
    invoke-static {v2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->stateToStr(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 71
    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    invoke-static {v2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isRunning(I)Z

    move-result p1

    if-nez p1, :cond_1

    invoke-static {v2}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isPreparing(I)Z

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    move p0, p2

    :cond_1
    :goto_0
    if-eqz v0, :cond_2

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_2
    return p0

    :catchall_0
    move-exception p0

    goto :goto_1

    .line 76
    :cond_3
    :try_start_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "queryIsAssembling finish: no data relative to "

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_4
    if-eqz v0, :cond_5

    .line 78
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_5
    return p2

    .line 62
    :goto_1
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception p1

    if-eqz v0, :cond_7

    if-eqz p0, :cond_6

    .line 78
    :try_start_3
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception p2

    invoke-virtual {p0, p2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    :cond_7
    :goto_2
    throw p1
.end method
