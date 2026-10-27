.class Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$2;
.super Ljava/lang/Object;
.source "XpLightlanuageProxy.java"

# interfaces
.implements Lcom/xiaopeng/xuiservice/operation/OperationHalService$OperationHalListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->addOperationListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    .line 851
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(II)V
    .locals 0
    .param p1, "errorCode"    # I
    .param p2, "operation"    # I

    .line 869
    return-void
.end method

.method public onEvent(ILjava/lang/String;ILjava/lang/String;)V
    .locals 1
    .param p1, "code"    # I
    .param p2, "id"    # Ljava/lang/String;
    .param p3, "type"    # I
    .param p4, "event"    # Ljava/lang/String;

    .line 854
    const v0, 0xf69b5

    if-eq p3, v0, :cond_0

    .line 855
    return-void

    .line 857
    :cond_0
    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/16 v0, 0x9

    if-eq p1, v0, :cond_1

    const/16 v0, 0xe

    if-eq p1, v0, :cond_1

    goto :goto_0

    .line 861
    :cond_1
    iget-object v0, p0, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;

    invoke-virtual {v0}, Lcom/xiaopeng/xuiservice/capabilities/llu/XpLightlanuageProxy;->loadLightEffect()V

    .line 864
    :goto_0
    return-void
.end method
