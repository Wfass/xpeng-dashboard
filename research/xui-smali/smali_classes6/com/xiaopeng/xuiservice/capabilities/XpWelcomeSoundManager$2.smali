.class Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$2;
.super Ljava/lang/Object;
.source "XpWelcomeSoundManager.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;->loadFileList(Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;


# direct methods
.method constructor <init>(Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    .line 152
    iput-object p1, p0, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$2;->this$0:Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/io/File;Ljava/io/File;)I
    .locals 2
    .param p1, "o1"    # Ljava/io/File;
    .param p2, "o2"    # Ljava/io/File;

    .line 155
    invoke-virtual {p1}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 156
    const/4 v0, -0x1

    return v0

    .line 157
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->isDirectory()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    const/4 v0, 0x1

    return v0

    .line 159
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 152
    check-cast p1, Ljava/io/File;

    check-cast p2, Ljava/io/File;

    invoke-virtual {p0, p1, p2}, Lcom/xiaopeng/xuiservice/capabilities/XpWelcomeSoundManager$2;->compare(Ljava/io/File;Ljava/io/File;)I

    move-result p1

    return p1
.end method
