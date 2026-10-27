.class public abstract Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;
.super Ljava/lang/Exception;
.source "StorageException.java"


# static fields
.field public static final REASON_ALREADY_INITIALIZED:I = 0x2

.field public static final REASON_CLOSE_STEAM_FAILED:I = 0x202

.field public static final REASON_DOWNLOAD_ERROR:I = 0x501

.field public static final REASON_DOWNLOAD_INCOMPLETE:I = 0x502

.field public static final REASON_EMPTY_CONTENT:I = 0x4

.field public static final REASON_EXCEED_TASK_LIMITATION:I = 0x402

.field public static final REASON_EXCEED_TRAFFIC_QUOTA:I = 0x601

.field public static final REASON_FAIL_TO_CREATE_FILE:I = 0x203

.field public static final REASON_FILE_NOT_EXISTS:I = 0x201

.field public static final REASON_GET_TOKEN_ERROR:I = 0x301

.field public static final REASON_ILLEGAL_PATH_ARGUMENT:I = 0x3

.field public static final REASON_NOT_INITIALIZED:I = 0x1

.field public static final REASON_UPLOAD_ERROR:I = 0x401

.field private static final serialVersionUID:J = 0x64L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "message"
        }
    .end annotation

    .line 34
    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public abstract getReasonCode()I
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 49
    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getMessage()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 50
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getReasonCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 52
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Reason: ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/remotestorage/StorageException;->getReasonCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
