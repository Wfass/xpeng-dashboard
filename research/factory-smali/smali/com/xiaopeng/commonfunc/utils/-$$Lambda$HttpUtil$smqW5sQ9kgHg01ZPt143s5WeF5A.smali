.class public final synthetic Lcom/xiaopeng/commonfunc/utils/-$$Lambda$HttpUtil$smqW5sQ9kgHg01ZPt143s5WeF5A;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;


# direct methods
.method public synthetic constructor <init>(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$HttpUtil$smqW5sQ9kgHg01ZPt143s5WeF5A;->f$0:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/commonfunc/utils/-$$Lambda$HttpUtil$smqW5sQ9kgHg01ZPt143s5WeF5A;->f$0:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;

    invoke-static {v0}, Lcom/xiaopeng/commonfunc/utils/HttpUtil;->lambda$genUuid$0(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method
