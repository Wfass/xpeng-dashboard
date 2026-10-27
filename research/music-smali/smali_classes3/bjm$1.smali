.class Lbjm$1;
.super Ljava/lang/Object;
.source "SongQualityChooseDialog.java"

# interfaces
.implements Lcom/xiaopeng/musicradio/widget/LayoutChangedView$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbjm;->c()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lbjm;


# direct methods
.method constructor <init>(Lbjm;)V
    .locals 0

    .line 88
    iput-object p1, p0, Lbjm$1;->a:Lbjm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 91
    iget-object v0, p0, Lbjm$1;->a:Lbjm;

    invoke-virtual {v0}, Lbjm;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lbjm$1;->a:Lbjm;

    invoke-virtual {v0}, Lbjm;->j()V

    .line 93
    iget-object v0, p0, Lbjm$1;->a:Lbjm;

    invoke-virtual {v0}, Lbjm;->h()V

    :cond_0
    return-void
.end method

.method public b()V
    .locals 0

    return-void
.end method
