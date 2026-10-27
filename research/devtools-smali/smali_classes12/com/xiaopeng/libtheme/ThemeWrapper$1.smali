.class Lcom/xiaopeng/libtheme/ThemeWrapper$1;
.super Ljava/lang/Object;
.source "ThemeWrapper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/libtheme/ThemeWrapper;->put(Landroid/content/Context;Lcom/xiaopeng/libtheme/ThemeData;)V
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

    .line 104
    iput-object p1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$1;->this$0:Lcom/xiaopeng/libtheme/ThemeWrapper;

    iput-object p2, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$1;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$1;->val$data:Lcom/xiaopeng/libtheme/ThemeData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 107
    iget-object v0, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$1;->val$context:Landroid/content/Context;

    iget-object v1, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$1;->val$data:Lcom/xiaopeng/libtheme/ThemeData;

    iget-object v1, v1, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/xiaopeng/libtheme/ThemeParser;->parseXml(Landroid/content/Context;Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 108
    invoke-static {}, Lcom/xiaopeng/libtheme/ThemeWrapper;->access$100()Ljava/util/HashMap;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/libtheme/ThemeWrapper$1;->val$data:Lcom/xiaopeng/libtheme/ThemeData;

    iget-object v2, v2, Lcom/xiaopeng/libtheme/ThemeData;->xml:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 109
    return-void
.end method
