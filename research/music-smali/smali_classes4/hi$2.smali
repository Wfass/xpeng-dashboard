.class Lhi$2;
.super Ljava/lang/Object;
.source "ViewDragHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lhi;


# direct methods
.method constructor <init>(Lhi;)V
    .locals 0

    .line 342
    iput-object p1, p0, Lhi$2;->a:Lhi;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 345
    iget-object v0, p0, Lhi$2;->a:Lhi;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lhi;->d(I)V

    return-void
.end method
