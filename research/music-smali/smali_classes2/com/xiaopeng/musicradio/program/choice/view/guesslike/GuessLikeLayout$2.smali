.class Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$2;
.super Ljava/lang/Object;
.source "GuessLikeLayout.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;->d()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;


# direct methods
.method constructor <init>(Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;)V
    .locals 0

    .line 141
    iput-object p1, p0, Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout$2;->a:Lcom/xiaopeng/musicradio/program/choice/view/guesslike/GuessLikeLayout;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 145
    invoke-static {}, Lbmm;->b()Lbmm;

    move-result-object p1

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lbmm;->a(Z)V

    .line 146
    invoke-static {}, Lbmx;->d()V

    return-void
.end method
