.class Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl$1;
.super Ljava/lang/Object;
.source "XActivityDelegateImpl.java"

# interfaces
.implements Landroid/view/LayoutInflater$Factory2;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->installViewFactory()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;

    .line 216
    iput-object p1, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl$1;->this$0:Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "parent"    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 220
    iget-object v0, p0, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl$1;->this$0:Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl;->createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2, "context"    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3, "attrs"    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 226
    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1, p2, p3}, Lcom/xiaopeng/xui/app/delegate/XActivityDelegateImpl$1;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
