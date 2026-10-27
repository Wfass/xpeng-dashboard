.class Lcom/xiaopeng/datalog/b/a$3;
.super Ljava/lang/Object;
.source "DataBackupHelper.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaopeng/datalog/b/a;->c(Ljava/lang/String;Landroid/content/Context;)Ljava/io/File;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic qu:Ljava/lang/String;

.field final synthetic qv:Lcom/xiaopeng/datalog/b/a;


# direct methods
.method constructor <init>(Lcom/xiaopeng/datalog/b/a;Ljava/lang/String;)V
    .locals 0

    .line 233
    iput-object p1, p0, Lcom/xiaopeng/datalog/b/a$3;->qv:Lcom/xiaopeng/datalog/b/a;

    iput-object p2, p0, Lcom/xiaopeng/datalog/b/a$3;->qu:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    .line 236
    iget-object p1, p0, Lcom/xiaopeng/datalog/b/a$3;->qu:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const-string p1, ".log"

    invoke-virtual {p2, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
