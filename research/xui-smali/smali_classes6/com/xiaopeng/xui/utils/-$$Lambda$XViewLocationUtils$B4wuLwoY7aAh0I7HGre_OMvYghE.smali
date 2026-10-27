.class public final synthetic Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/view/View;

.field private final synthetic f$1:Landroid/view/ViewGroup;

.field private final synthetic f$2:Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;


# direct methods
.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/ViewGroup;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;->f$0:Landroid/view/View;

    iput-object p2, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;->f$1:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;->f$2:Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;->f$0:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;->f$1:Landroid/view/ViewGroup;

    iget-object v2, p0, Lcom/xiaopeng/xui/utils/-$$Lambda$XViewLocationUtils$B4wuLwoY7aAh0I7HGre_OMvYghE;->f$2:Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/xui/utils/XViewLocationUtils;->lambda$scrollByLocation$2(Landroid/view/View;Landroid/view/ViewGroup;Lcom/xiaopeng/xui/utils/XViewLocationUtils$OnCorrectionLocationListener;)V

    return-void
.end method
