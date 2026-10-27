.class Landroidx/navigation/e$1;
.super Landroidx/activity/b;
.source "NavController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroidx/navigation/e;


# direct methods
.method constructor <init>(Landroidx/navigation/e;Z)V
    .locals 0

    .line 116
    iput-object p1, p0, Landroidx/navigation/e$1;->a:Landroidx/navigation/e;

    invoke-direct {p0, p2}, Landroidx/activity/b;-><init>(Z)V

    return-void
.end method


# virtual methods
.method public c()V
    .locals 1

    .line 119
    iget-object v0, p0, Landroidx/navigation/e$1;->a:Landroidx/navigation/e;

    invoke-virtual {v0}, Landroidx/navigation/e;->b()Z

    return-void
.end method
