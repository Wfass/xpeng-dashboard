.class Lbtd$3;
.super Ljava/lang/Object;
.source "XmlyVipModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbtd;->a(Ljava/lang/String;ILbtd$b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbtd$b;

.field final synthetic b:Lbtd;


# direct methods
.method constructor <init>(Lbtd;Lbtd$b;)V
    .locals 0

    .line 182
    iput-object p1, p0, Lbtd$3;->b:Lbtd;

    iput-object p2, p0, Lbtd$3;->a:Lbtd$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 185
    iget-object v0, p0, Lbtd$3;->a:Lbtd$b;

    const/4 v1, -0x1

    const-string v2, "openId isEmpty"

    invoke-interface {v0, v1, v2}, Lbtd$b;->a(ILjava/lang/String;)V

    return-void
.end method
