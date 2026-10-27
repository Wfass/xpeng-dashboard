.class Lapz$1$1$1;
.super Ljava/lang/Object;
.source "BizHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapz$1$1;->onSuccess(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

.field final synthetic b:Ljava/lang/String;

.field final synthetic c:Lapz$1$1;


# direct methods
.method constructor <init>(Lapz$1$1;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Ljava/lang/String;)V
    .locals 0

    .line 74
    iput-object p1, p0, Lapz$1$1$1;->c:Lapz$1$1;

    iput-object p2, p0, Lapz$1$1$1;->a:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    iput-object p3, p0, Lapz$1$1$1;->b:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 77
    iget-object v0, p0, Lapz$1$1$1;->c:Lapz$1$1;

    iget-object v0, v0, Lapz$1$1;->a:Lapz$1;

    iget-object v0, v0, Lapz$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lapz$1$1$1;->a:Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;

    iget-object v2, p0, Lapz$1$1$1;->c:Lapz$1$1;

    iget-object v2, v2, Lapz$1$1;->a:Lapz$1;

    iget-object v2, v2, Lapz$1;->c:Lapz$a;

    iget-object v3, p0, Lapz$1$1$1;->b:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3}, Lapz;->a(Ljava/lang/String;Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IResponse;Lapz$a;Ljava/lang/String;)V

    return-void
.end method
