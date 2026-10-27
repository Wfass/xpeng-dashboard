.class public Lcom/android/car/media/common/source/c;
.super Ljava/lang/Object;
.source "MediaSourceColors.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/car/media/common/source/c$a;
    }
.end annotation


# static fields
.field private static final a:Lcom/android/car/media/common/source/c;


# instance fields
.field private final b:I

.field private final c:I

.field private final d:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 42
    new-instance v0, Lcom/android/car/media/common/source/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1}, Lcom/android/car/media/common/source/c;-><init>(III)V

    sput-object v0, Lcom/android/car/media/common/source/c;->a:Lcom/android/car/media/common/source/c;

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput p1, p0, Lcom/android/car/media/common/source/c;->b:I

    .line 52
    iput p2, p0, Lcom/android/car/media/common/source/c;->c:I

    .line 53
    iput p3, p0, Lcom/android/car/media/common/source/c;->d:I

    return-void
.end method

.method static synthetic a()Lcom/android/car/media/common/source/c;
    .locals 1

    .line 32
    sget-object v0, Lcom/android/car/media/common/source/c;->a:Lcom/android/car/media/common/source/c;

    return-object v0
.end method


# virtual methods
.method public a(I)I
    .locals 1

    .line 65
    iget v0, p0, Lcom/android/car/media/common/source/c;->c:I

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move p1, v0

    :goto_0
    return p1
.end method
