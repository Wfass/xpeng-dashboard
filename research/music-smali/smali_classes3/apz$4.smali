.class final Lapz$4;
.super Ljava/lang/Object;
.source "BizHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapz;->b(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Lapz$a;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lapz$a;

.field final synthetic b:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;


# direct methods
.method constructor <init>(Lapz$a;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
    .locals 0

    .line 122
    iput-object p1, p0, Lapz$4;->a:Lapz$a;

    iput-object p2, p0, Lapz$4;->b:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 125
    iget-object v0, p0, Lapz$4;->a:Lapz$a;

    iget-object v1, p0, Lapz$4;->b:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    invoke-interface {v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->code()I

    move-result v1

    iget-object v2, p0, Lapz$4;->b:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    invoke-interface {v2}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;->message()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Lapz$a;->a(ILjava/lang/String;Z)V

    return-void
.end method
