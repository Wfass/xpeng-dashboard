.class public final Landroidx/navigation/c;
.super Ljava/lang/Object;
.source "NavAction.java"


# instance fields
.field private final a:I

.field private b:Landroidx/navigation/m;

.field private c:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 49
    invoke-direct {p0, p1, v0}, Landroidx/navigation/c;-><init>(ILandroidx/navigation/m;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/navigation/m;)V
    .locals 1

    const/4 v0, 0x0

    .line 60
    invoke-direct {p0, p1, p2, v0}, Landroidx/navigation/c;-><init>(ILandroidx/navigation/m;Landroid/os/Bundle;)V

    return-void
.end method

.method public constructor <init>(ILandroidx/navigation/m;Landroid/os/Bundle;)V
    .locals 0

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    iput p1, p0, Landroidx/navigation/c;->a:I

    .line 75
    iput-object p2, p0, Landroidx/navigation/c;->b:Landroidx/navigation/m;

    .line 76
    iput-object p3, p0, Landroidx/navigation/c;->c:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 83
    iget v0, p0, Landroidx/navigation/c;->a:I

    return v0
.end method

.method public a(Landroid/os/Bundle;)V
    .locals 0

    .line 118
    iput-object p1, p0, Landroidx/navigation/c;->c:Landroid/os/Bundle;

    return-void
.end method

.method public a(Landroidx/navigation/m;)V
    .locals 0

    .line 92
    iput-object p1, p0, Landroidx/navigation/c;->b:Landroidx/navigation/m;

    return-void
.end method

.method public b()Landroidx/navigation/m;
    .locals 1

    .line 100
    iget-object v0, p0, Landroidx/navigation/c;->b:Landroidx/navigation/m;

    return-object v0
.end method

.method public c()Landroid/os/Bundle;
    .locals 1

    .line 109
    iget-object v0, p0, Landroidx/navigation/c;->c:Landroid/os/Bundle;

    return-object v0
.end method
