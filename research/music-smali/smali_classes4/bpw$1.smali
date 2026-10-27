.class Lbpw$1;
.super Ljava/lang/Object;
.source "AppOnCreateEndTask.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbpw;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbpw;


# direct methods
.method constructor <init>(Lbpw;)V
    .locals 0

    .line 12
    iput-object p1, p0, Lbpw$1;->a:Lbpw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 15
    new-instance v0, Lcom/xiaopeng/musicradio/event/common/CommonEvent$c;

    invoke-direct {v0}, Lcom/xiaopeng/musicradio/event/common/CommonEvent$c;-><init>()V

    invoke-static {v0}, Lcom/xiaopeng/musicradio/utils/x;->f(Ljava/lang/Object;)V

    return-void
.end method
