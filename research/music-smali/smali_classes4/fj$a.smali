.class public final Lfj$a;
.super Ljava/lang/Object;
.source "ContentInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lfj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field a:Landroid/content/ClipData;

.field b:I

.field c:I

.field d:Landroid/net/Uri;

.field e:Landroid/os/Bundle;


# direct methods
.method public constructor <init>(Landroid/content/ClipData;I)V
    .locals 0

    .line 293
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 294
    iput-object p1, p0, Lfj$a;->a:Landroid/content/ClipData;

    .line 295
    iput p2, p0, Lfj$a;->b:I

    return-void
.end method


# virtual methods
.method public a(I)Lfj$a;
    .locals 0

    .line 331
    iput p1, p0, Lfj$a;->c:I

    return-object p0
.end method

.method public a(Landroid/net/Uri;)Lfj$a;
    .locals 0

    .line 344
    iput-object p1, p0, Lfj$a;->d:Landroid/net/Uri;

    return-object p0
.end method

.method public a(Landroid/os/Bundle;)Lfj$a;
    .locals 0

    .line 356
    iput-object p1, p0, Lfj$a;->e:Landroid/os/Bundle;

    return-object p0
.end method

.method public a()Lfj;
    .locals 1

    .line 365
    new-instance v0, Lfj;

    invoke-direct {v0, p0}, Lfj;-><init>(Lfj$a;)V

    return-object v0
.end method
