.class final Lhc$b;
.super Ljava/lang/Object;
.source "InputContentInfoCompat.java"

# interfaces
.implements Lhc$c;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lhc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "b"
.end annotation


# instance fields
.field private final a:Landroid/net/Uri;

.field private final b:Landroid/content/ClipDescription;

.field private final c:Landroid/net/Uri;


# direct methods
.method constructor <init>(Landroid/net/Uri;Landroid/content/ClipDescription;Landroid/net/Uri;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 63
    iput-object p1, p0, Lhc$b;->a:Landroid/net/Uri;

    .line 64
    iput-object p2, p0, Lhc$b;->b:Landroid/content/ClipDescription;

    .line 65
    iput-object p3, p0, Lhc$b;->c:Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public a()Landroid/net/Uri;
    .locals 1

    .line 71
    iget-object v0, p0, Lhc$b;->a:Landroid/net/Uri;

    return-object v0
.end method

.method public b()Landroid/content/ClipDescription;
    .locals 1

    .line 77
    iget-object v0, p0, Lhc$b;->b:Landroid/content/ClipDescription;

    return-object v0
.end method

.method public c()Landroid/net/Uri;
    .locals 1

    .line 83
    iget-object v0, p0, Lhc$b;->c:Landroid/net/Uri;

    return-object v0
.end method

.method public d()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public e()V
    .locals 0

    return-void
.end method
