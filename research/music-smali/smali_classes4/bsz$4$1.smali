.class Lbsz$4$1;
.super Ljava/lang/Object;
.source "UserVipModelBase.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbsz$4;->a()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbsz$4;


# direct methods
.method constructor <init>(Lbsz$4;)V
    .locals 0

    .line 282
    iput-object p1, p0, Lbsz$4$1;->a:Lbsz$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 285
    iget-object v0, p0, Lbsz$4$1;->a:Lbsz$4;

    iget-object v0, v0, Lbsz$4;->b:Lbsz$b;

    const/4 v1, -0x1

    const-string v2, "openId isEmpty"

    invoke-interface {v0, v1, v2}, Lbsz$b;->a(ILjava/lang/String;)V

    return-void
.end method
