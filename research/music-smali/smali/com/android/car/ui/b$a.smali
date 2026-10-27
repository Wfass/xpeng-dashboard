.class public final Lcom/android/car/ui/b$a;
.super Ljava/lang/Object;
.source "CarUiText.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/car/ui/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field private a:I

.field private b:I

.field private final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/CharSequence;)V
    .locals 0

    .line 163
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/android/car/ui/b$a;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/CharSequence;",
            ">;)V"
        }
    .end annotation

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7fffffff

    .line 153
    iput v0, p0, Lcom/android/car/ui/b$a;->a:I

    .line 154
    iput v0, p0, Lcom/android/car/ui/b$a;->b:I

    .line 173
    iput-object p1, p0, Lcom/android/car/ui/b$a;->c:Ljava/util/List;

    return-void
.end method

.method static synthetic a(Lcom/android/car/ui/b$a;)Ljava/util/List;
    .locals 0

    .line 152
    iget-object p0, p0, Lcom/android/car/ui/b$a;->c:Ljava/util/List;

    return-object p0
.end method

.method static synthetic b(Lcom/android/car/ui/b$a;)I
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/car/ui/b$a;->b:I

    return p0
.end method

.method static synthetic c(Lcom/android/car/ui/b$a;)I
    .locals 0

    .line 152
    iget p0, p0, Lcom/android/car/ui/b$a;->a:I

    return p0
.end method


# virtual methods
.method public a()Lcom/android/car/ui/b;
    .locals 2

    .line 198
    new-instance v0, Lcom/android/car/ui/b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/car/ui/b;-><init>(Lcom/android/car/ui/b$a;Lcom/android/car/ui/b$1;)V

    return-object v0
.end method
