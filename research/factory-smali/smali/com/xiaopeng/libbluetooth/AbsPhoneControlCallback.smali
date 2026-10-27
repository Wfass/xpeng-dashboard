.class public abstract Lcom/xiaopeng/libbluetooth/AbsPhoneControlCallback;
.super Ljava/lang/Object;
.source "AbsPhoneControlCallback.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method protected onBindSuccess()V
    .locals 0

    .line 262
    return-void
.end method

.method protected onCallStatus(ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "value"    # I
    .param p2, "number"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;

    .line 19
    return-void
.end method

.method protected onHFPIndicator(II)V
    .locals 0
    .param p1, "keyType"    # I
    .param p2, "typeValue"    # I

    .line 83
    return-void
.end method

.method protected onIncomingSms(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "number"    # Ljava/lang/String;
    .param p2, "date"    # Ljava/lang/String;
    .param p3, "content"    # Ljava/lang/String;

    .line 37
    return-void
.end method

.method protected onMissCall(I)V
    .locals 0
    .param p1, "missedCallCount"    # I

    .line 27
    return-void
.end method

.method protected onPBAPCallback(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "dataType"    # I
    .param p3, "cur"    # I
    .param p4, "total"    # I
    .param p5, "error"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "time"    # Ljava/lang/String;

    .line 220
    return-void
.end method

.method protected onPhoneBook(IIIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "dataType"    # I
    .param p3, "cur"    # I
    .param p4, "total"    # I
    .param p5, "error"    # I
    .param p6, "name"    # Ljava/lang/String;
    .param p7, "number"    # Ljava/lang/String;
    .param p8, "time"    # Ljava/lang/String;

    .line 151
    return-void
.end method

.method protected onRecordCallback(ILjava/lang/String;)V
    .locals 0
    .param p1, "type"    # I
    .param p2, "name"    # Ljava/lang/String;

    .line 255
    return-void
.end method

.method protected onSmsCallback(IIIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "status"    # I
    .param p2, "error"    # I
    .param p3, "cur"    # I
    .param p4, "total"    # I
    .param p5, "number"    # Ljava/lang/String;
    .param p6, "date"    # Ljava/lang/String;
    .param p7, "content"    # Ljava/lang/String;

    .line 253
    return-void
.end method
