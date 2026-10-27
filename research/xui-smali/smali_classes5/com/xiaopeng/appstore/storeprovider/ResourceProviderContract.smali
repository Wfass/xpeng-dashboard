.class public Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;
.super Ljava/lang/Object;
.source "ResourceProviderContract.java"


# static fields
.field public static final ASSEMBLE_PATH:Ljava/lang/String; = "assemble"

.field public static final ASSEMBLE_URI:Landroid/net/Uri;

.field public static final AUTHORITY:Ljava/lang/String; = "resource_service"

.field public static final AUTHORITY_USER0:Ljava/lang/String; = "0@resource_service"

.field public static final COLUMN_KEY:Ljava/lang/String; = "key"

.field public static final COLUMN_STATE:Ljava/lang/String; = "state"

.field public static final INDEX_ASSEMBLE_CALLING:I = 0x2

.field public static final INDEX_ASSEMBLE_ICON_URL:I = 0x4

.field public static final INDEX_ASSEMBLE_KEY:I = 0x0

.field public static final INDEX_ASSEMBLE_NAME:I = 0x3

.field public static final INDEX_ASSEMBLE_PROGRESS:I = 0x6

.field public static final INDEX_ASSEMBLE_STATE:I = 0x5

.field public static final INDEX_ASSEMBLE_TAG:I = 0x7

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

.field private static final URI_PATH_ROOT_USER0:Ljava/lang/String; = "content://0@resource_service/"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 27
    const-string v0, "content://0@resource_service/assemble"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->ASSEMBLE_URI:Landroid/net/Uri;

    .line 41
    const-string v0, "content://0@resource_service/local_states"

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
    .locals 7
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "type"    # I
    .param p2, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "type",
            "key"
        }
    .end annotation

    .line 53
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 54
    .local v0, "resolver":Landroid/content/ContentResolver;
    new-instance v1, Landroid/content/ContentValues;

    const/4 v2, 0x2

    invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V

    .line 55
    .local v1, "values":Landroid/content/ContentValues;
    const-string v2, "key"

    invoke-virtual {v1, v2, p2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    sget-object v2, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->LOCAL_STATE_URI:Landroid/net/Uri;

    int-to-long v3, p1

    invoke-static {v2, v3, v4}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v2

    .line 59
    .local v2, "uri":Landroid/net/Uri;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v0, v2, v1, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    goto :goto_0

    .line 60
    :catch_0
    move-exception v3

    .line 61
    .local v3, "ex":Ljava/lang/Exception;
    const-string v4, "ResourceProviderContrac"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "clearState: update ex:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    .end local v3    # "ex":Ljava/lang/Exception;
    :goto_0
    return-void
.end method

.method public static queryIsAssembling(Landroid/content/Context;Ljava/lang/String;I)Z
    .locals 8
    .param p0, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p1, "key"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "resType"    # I
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "context",
            "key",
            "resType"
        }
    .end annotation

    .line 67
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/xiaopeng/appstore/storeprovider/ResourceProviderContract;->ASSEMBLE_URI:Landroid/net/Uri;

    int-to-long v2, p2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    const-string v3, "key LIKE ?"

    const/4 v6, 0x1

    new-array v4, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object p1, v4, v7

    const/4 v2, 0x0

    const/4 v5, 0x0

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    .line 72
    .local v0, "cursor":Landroid/database/Cursor;
    if-eqz v0, :cond_3

    :try_start_0
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    move-result v1

    if-eqz v1, :cond_3

    .line 74
    invoke-interface {v0}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 75
    const/4 v1, 0x5

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    .line 76
    .local v1, "state":I
    const-string v2, "ResourceProviderContrac"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "queryIsAssembling finish: key="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " state="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->stateToStr(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 76
    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isRunning(I)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-static {v1}, Lcom/xiaopeng/appstore/storeprovider/AssembleInfo;->isPreparing(I)Z

    move-result v2
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v2, :cond_0

    goto :goto_0

    .line 83
    :cond_0
    move v6, v7

    goto :goto_1

    .line 78
    :cond_1
    :goto_0
    nop

    .line 83
    :goto_1
    if-eqz v0, :cond_2

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 78
    :cond_2
    return v6

    .line 67
    .end local v1    # "state":I
    :catch_0
    move-exception v1

    goto :goto_2

    .line 81
    :cond_3
    :try_start_1
    const-string v1, "ResourceProviderContrac"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "queryIsAssembling finish: no data relative to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 83
    :cond_4
    if-eqz v0, :cond_5

    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 84
    .end local v0    # "cursor":Landroid/database/Cursor;
    :cond_5
    return v7

    .line 67
    .restart local v0    # "cursor":Landroid/database/Cursor;
    :goto_2
    if-eqz v0, :cond_6

    :try_start_2
    invoke-interface {v0}, Landroid/database/Cursor;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    :cond_6
    :goto_3
    throw v1
.end method
