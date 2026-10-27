.class public final synthetic Lcom/xiaopeng/devtools/utils/-$$Lambda$g$76pJJVasRM-_Ap4FQqziDpas8qY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/io/FilenameFilter;


# instance fields
.field private final synthetic f$0:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/xiaopeng/devtools/utils/-$$Lambda$g$76pJJVasRM-_Ap4FQqziDpas8qY;->f$0:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 1

    iget-object v0, p0, Lcom/xiaopeng/devtools/utils/-$$Lambda$g$76pJJVasRM-_Ap4FQqziDpas8qY;->f$0:Ljava/lang/String;

    invoke-static {v0, p1, p2}, Lcom/xiaopeng/devtools/utils/g;->lambda$76pJJVasRM-_Ap4FQqziDpas8qY(Ljava/lang/String;Ljava/io/File;Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
