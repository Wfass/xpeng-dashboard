.class public final synthetic Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroid/view/View;

.field public final synthetic f$1:Landroid/view/ViewGroup;

.field public final synthetic f$2:I

.field public final synthetic f$3:Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;->f$1:Landroid/view/ViewGroup;

    iput p3, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;->f$2:I

    iput-object p4, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;->f$3:Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    iget-object v0, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;->f$1:Landroid/view/ViewGroup;

    iget v2, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;->f$2:I

    iget-object v3, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$L7jZ9ipSSegDw3NBTwPdBqmvBAI;->f$3:Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;

    invoke-static {v0, v1, v2, v3}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->lambda$scrollByLocation$2(Landroid/view/View;Landroid/view/ViewGroup;ILcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    return-void
.end method
