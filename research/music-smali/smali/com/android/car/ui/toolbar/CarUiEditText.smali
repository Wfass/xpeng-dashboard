.class Lcom/android/car/ui/toolbar/CarUiEditText;
.super Landroid/widget/EditText;
.source "CarUiEditText.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "AppCompatCustomView"
    }
.end annotation

.annotation build Landroid/annotation/TargetApi;
    value = 0x1c
.end annotation


# instance fields
.field private a:Ljava/util/function/BiConsumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/BiConsumer<",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 48
    invoke-direct {p0, p1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->a:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1, p2}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->a:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .line 56
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->a:Ljava/util/function/BiConsumer;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    .line 61
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/widget/EditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p1, 0x0

    .line 41
    iput-object p1, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->a:Ljava/util/function/BiConsumer;

    return-void
.end method


# virtual methods
.method public onPrivateIMECommand(Ljava/lang/String;Landroid/os/Bundle;)Z
    .locals 1

    .line 67
    iget-object v0, p0, Lcom/android/car/ui/toolbar/CarUiEditText;->a:Ljava/util/function/BiConsumer;

    if-eqz v0, :cond_0

    .line 68
    invoke-interface {v0, p1, p2}, Ljava/util/function/BiConsumer;->accept(Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
