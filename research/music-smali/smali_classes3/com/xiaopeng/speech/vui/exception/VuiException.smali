.class public Lcom/xiaopeng/speech/vui/exception/VuiException;
.super Ljava/lang/RuntimeException;
.source "VuiException.java"


# instance fields
.field protected final errorCode:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 14
    sget-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->UNSPECIFIED:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 15
    sget-object v0, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->UNSPECIFIED:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    iput-object v0, p0, Lcom/xiaopeng/speech/vui/exception/VuiException;->errorCode:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    return-void
.end method

.method public constructor <init>(Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;)V
    .locals 1

    .line 19
    invoke-virtual {p1}, Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 20
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/exception/VuiException;->errorCode:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    return-void
.end method


# virtual methods
.method public getErrorCode()Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;
    .locals 1

    .line 24
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/exception/VuiException;->errorCode:Lcom/xiaopeng/speech/vui/exception/VuiErrorCode;

    return-object v0
.end method
