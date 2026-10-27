.class Lbkq$1;
.super Ljava/lang/Object;
.source "SessionInterceptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbkq;->intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbkq;


# direct methods
.method constructor <init>(Lbkq;)V
    .locals 0

    .line 83
    iput-object p1, p0, Lbkq$1;->a:Lbkq;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 86
    invoke-static {}, Lbdm;->a()Lbdm;

    move-result-object v0

    invoke-virtual {v0}, Lbdm;->d()Lbel;

    move-result-object v0

    invoke-virtual {v0}, Lbel;->f()V

    return-void
.end method
