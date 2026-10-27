.class Lbks$1;
.super Ljava/lang/Object;
.source "XPGetRequest.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbks;->a(Lcom/lzy/okgo/callback/Callback;)Lcom/lzy/okgo/adapter/Call;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/lzy/okgo/adapter/Call;

.field final synthetic b:Lcom/lzy/okgo/callback/Callback;

.field final synthetic c:Lbks;


# direct methods
.method constructor <init>(Lbks;Lcom/lzy/okgo/adapter/Call;Lcom/lzy/okgo/callback/Callback;)V
    .locals 0

    .line 50
    iput-object p1, p0, Lbks$1;->c:Lbks;

    iput-object p2, p0, Lbks$1;->a:Lcom/lzy/okgo/adapter/Call;

    iput-object p3, p0, Lbks$1;->b:Lcom/lzy/okgo/callback/Callback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 53
    invoke-static {}, Lbkn;->b()V

    .line 54
    iget-object v0, p0, Lbks$1;->c:Lbks;

    invoke-static {v0}, Lbkn;->b(Lcom/lzy/okgo/request/base/Request;)V

    .line 55
    iget-object v0, p0, Lbks$1;->c:Lbks;

    invoke-static {v0}, Lbkn;->a(Lcom/lzy/okgo/request/base/Request;)V

    .line 57
    iget-object v0, p0, Lbks$1;->a:Lcom/lzy/okgo/adapter/Call;

    iget-object v1, p0, Lbks$1;->b:Lcom/lzy/okgo/callback/Callback;

    invoke-interface {v0, v1}, Lcom/lzy/okgo/adapter/Call;->execute(Lcom/lzy/okgo/callback/Callback;)V

    return-void
.end method
