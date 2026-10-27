.class Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;
.super Ljava/lang/Object;
.source "XCheckBoxDrawableV5.java"

# interfaces
.implements Lcom/airbnb/lottie/LottieListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->inflate(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;Landroid/util/AttributeSet;Landroid/content/res/Resources$Theme;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/airbnb/lottie/LottieListener<",
        "Lcom/airbnb/lottie/LottieComposition;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;)V
    .locals 0

    .line 60
    iput-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;->this$0:Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onResult(Lcom/airbnb/lottie/LottieComposition;)V
    .locals 1

    .line 63
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;->this$0:Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;

    invoke-virtual {v0, p1}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->setComposition(Lcom/airbnb/lottie/LottieComposition;)Z

    .line 64
    iget-object p1, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;->this$0:Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;

    invoke-virtual {p1}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;->getCallback()Landroid/graphics/drawable/Drawable$Callback;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 66
    iget-object v0, p0, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;->this$0:Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5;

    invoke-interface {p1, v0}, Landroid/graphics/drawable/Drawable$Callback;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public bridge synthetic onResult(Ljava/lang/Object;)V
    .locals 0

    .line 60
    check-cast p1, Lcom/airbnb/lottie/LottieComposition;

    invoke-virtual {p0, p1}, Lcom/xiaopeng/xui/drawable/checkbox/XCheckBoxDrawableV5$2;->onResult(Lcom/airbnb/lottie/LottieComposition;)V

    return-void
.end method
