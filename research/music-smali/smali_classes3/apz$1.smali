.class final Lapz$1;
.super Ljava/lang/Object;
.source "BizHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapz;->a(Ljava/lang/String;Ljava/util/Map;Lapz$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Ljava/util/Map;

.field final synthetic c:Lapz$a;


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/util/Map;Lapz$a;)V
    .locals 0

    .line 59
    iput-object p1, p0, Lapz$1;->a:Ljava/lang/String;

    iput-object p2, p0, Lapz$1;->b:Ljava/util/Map;

    iput-object p3, p0, Lapz$1;->c:Lapz$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 62
    iget-object v0, p0, Lapz$1;->a:Ljava/lang/String;

    iget-object v1, p0, Lapz$1;->b:Ljava/util/Map;

    invoke-static {v0, v1}, Lapz;->a(Ljava/lang/String;Ljava/util/Map;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;

    move-result-object v0

    .line 63
    invoke-static {}, Lapz;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IBizHelper;->buildWithSecretKey(Ljava/lang/String;)Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;

    move-result-object v0

    new-instance v1, Lapz$1$1;

    invoke-direct {v1, p0}, Lapz$1$1;-><init>(Lapz$1;)V

    invoke-interface {v0, v1}, Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/IRequest;->execute(Lcom/xiaopeng/lib/framework/moduleinterface/netchannelmodule/http/Callback;)V

    return-void
.end method
