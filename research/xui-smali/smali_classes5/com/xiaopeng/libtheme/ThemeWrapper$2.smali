.class Lcom/xiaopeng/libtheme/ThemeWrapper$2;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper;->handleRefreshXml(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/libtheme/ThemeWrapper;

.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$data:Lcom/xiaopeng/libtheme/ThemeData;


# direct methods
.method constructor <init>(Lcom/xiaopeng/libtheme/ThemeWrapper;Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/libtheme/ThemeWrapper;

    .line 144
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$2;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper;

    iput-object p2, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$2;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$2;->val$data:Lcom/xiaopeng/libtheme/ThemeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 147
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$2;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper;

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$2;->val$context:Landroid/content/Context;

    iget-object v2, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$2;->val$data:Lcom/xiaopeng/libtheme/ThemeData;

    invoke-static {v0, v1, v2}, Lcom/xiaopeng/libtheme/ThemeWrapper;->access$200(Lcom/xiaopeng/libtheme/ThemeWrapper;Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V

    .line 148
    return-void
.end method
