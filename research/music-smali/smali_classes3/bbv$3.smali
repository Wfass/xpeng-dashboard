.class Lbbv$3;
.super Ljava/lang/Object;
.source "IcmControlModel.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbbv;->a(Landroid/view/KeyEvent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbbv;


# direct methods
.method constructor <init>(Lbbv;)V
    .locals 0

    .line 85
    iput-object p1, p0, Lbbv$3;->a:Lbbv;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 88
    invoke-static {}, Lask;->a()Lask;

    move-result-object v0

    invoke-virtual {v0}, Lask;->b()V

    return-void
.end method
