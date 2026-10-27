.class Lbqb$1;
.super Ljava/lang/Object;
.source "IdleTimeTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbqb;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbqb;


# direct methods
.method constructor <init>(Lbqb;)V
    .locals 0

    .line 10
    iput-object p1, p0, Lbqb$1;->a:Lbqb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 13
    iget-object v0, p0, Lbqb$1;->a:Lbqb;

    invoke-virtual {v0}, Lbqb;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/xiaopeng/musicradio/common/KeepLiveService;->a(Landroid/content/Context;)V

    return-void
.end method
