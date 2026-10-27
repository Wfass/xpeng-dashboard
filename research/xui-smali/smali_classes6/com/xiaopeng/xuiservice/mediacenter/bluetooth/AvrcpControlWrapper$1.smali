.class Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper$1;
.super Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;
.source "AvrcpControlWrapper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;

    .line 55
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper$1;->this$0:Lcom/xiaopeng/xuiservice/mediacenter/bluetooth/AvrcpControlWrapper;

    invoke-direct {p0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;-><init>()V

    return-void
.end method


# virtual methods
.method public onAvrcpServiceReady()V
    .locals 0

    .line 58
    invoke-super {p0}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcpServiceReady()V

    .line 59
    return-void
.end method

.method public onAvrcpStateChanged(Ljava/lang/String;II)V
    .locals 0
    .param p1, "address"    # Ljava/lang/String;
    .param p2, "prevState"    # I
    .param p3, "newState"    # I

    .line 63
    invoke-super {p0, p1, p2, p3}, Lcom/xiaopeng/btservice/base/AbsAvrcpControlCallback;->onAvrcpStateChanged(Ljava/lang/String;II)V

    .line 64
    return-void
.end method
