.class Lcom/xiaopeng/lib/themeswitch/Switcher$11;
.super Ljava/lang/Object;
.source "Switcher.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/lib/themeswitch/Switcher;->doSwitch2Night(ZLjava/util/ArrayList;Landroid/view/View;Ljava/lang/String;Ljava/lang/String;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

.field final synthetic val$attrType:Ljava/lang/String;

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Lcom/xiaopeng/lib/themeswitch/Switcher;Landroid/view/View;Ljava/lang/String;)V
    .locals 0

    .line 692
    iput-object p1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$11;->this$0:Lcom/xiaopeng/lib/themeswitch/Switcher;

    iput-object p2, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$11;->val$view:Landroid/view/View;

    iput-object p3, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$11;->val$attrType:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 695
    iget-object v0, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$11;->val$view:Landroid/view/View;

    iget-object v1, p0, Lcom/xiaopeng/lib/themeswitch/Switcher$11;->val$attrType:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setAlpha(F)V

    return-void
.end method
