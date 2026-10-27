.class Landroidx/navigation/NavBackStackEntry$b;
.super Landroidx/lifecycle/z;
.source "NavBackStackEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/navigation/NavBackStackEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "b"
.end annotation


# instance fields
.field private a:Landroidx/lifecycle/v;


# direct methods
.method constructor <init>(Landroidx/lifecycle/v;)V
    .locals 0

    .line 251
    invoke-direct {p0}, Landroidx/lifecycle/z;-><init>()V

    .line 252
    iput-object p1, p0, Landroidx/navigation/NavBackStackEntry$b;->a:Landroidx/lifecycle/v;

    return-void
.end method


# virtual methods
.method public b()Landroidx/lifecycle/v;
    .locals 1

    .line 256
    iget-object v0, p0, Landroidx/navigation/NavBackStackEntry$b;->a:Landroidx/lifecycle/v;

    return-object v0
.end method
