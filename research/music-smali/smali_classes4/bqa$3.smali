.class Lbqa$3;
.super Ljava/lang/Object;
.source "BusinessSyncInitTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqa;->p()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbqa;


# direct methods
.method constructor <init>(Lbqa;)V
    .locals 0

    .line 138
    iput-object p1, p0, Lbqa$3;->a:Lbqa;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    const/4 v0, 0x1

    .line 141
    sput-boolean v0, Lcom/xiaopeng/musicradio/a;->b:Z

    .line 142
    iget-object v0, p0, Lbqa$3;->a:Lbqa;

    invoke-virtual {v0}, Lbqa;->c()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AppInit: ==========  "

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$e;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$e;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method
