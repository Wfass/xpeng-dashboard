.class Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;
.super Ljava/lang/Object;
.source "EffectContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field mAvatarName:Landroid/widget/TextView;

.field mEffectName:Landroid/widget/TextView;

.field view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .line 117
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 118
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->view:Landroid/view/View;

    .line 119
    const v0, 0x7f090175

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mAvatarName:Landroid/widget/TextView;

    .line 120
    const v0, 0x7f090176

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/xiaopeng/xuiservice/xapp/mode/effect/EffectContainer$ViewHolder;->mEffectName:Landroid/widget/TextView;

    .line 121
    return-void
.end method
