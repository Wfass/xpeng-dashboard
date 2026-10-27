.class Lcom/xiaopeng/xui/widget/XTabLayout_V5$1;
.super Ljava/lang/Object;
.source "XTabLayout_V5.java"

# interfaces
.implements Lcom/google/android/material/tabs/TabLayout$OnTabSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/widget/XTabLayout_V5;->addVuiListener()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/widget/XTabLayout_V5;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/widget/XTabLayout_V5;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    .line 66
    iput-object p1, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5$1;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabReselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 80
    return-void
.end method

.method public onTabSelected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 2
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 69
    iget-object v0, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5$1;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    iget-object v1, p0, Lcom/xiaopeng/xui/widget/XTabLayout_V5$1;->this$0:Lcom/xiaopeng/xui/widget/XTabLayout_V5;

    invoke-virtual {v0, v1}, Lcom/xiaopeng/xui/widget/XTabLayout_V5;->updateVui(Landroid/view/View;)V

    .line 70
    return-void
.end method

.method public onTabUnselected(Lcom/google/android/material/tabs/TabLayout$Tab;)V
    .locals 0
    .param p1, "tab"    # Lcom/google/android/material/tabs/TabLayout$Tab;

    .line 75
    return-void
.end method
