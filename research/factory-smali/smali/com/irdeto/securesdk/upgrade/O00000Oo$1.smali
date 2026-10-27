.class Lcom/irdeto/securesdk/upgrade/O00000Oo$1;
.super Ljava/lang/Object;
.source "Utils.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/irdeto/securesdk/upgrade/O00000Oo;->O00000o0(Ljava/lang/String;)Lcom/irdeto/securesdk/upgrade/O000000o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 0

    const-string p1, "(libirmsdk_)(\\d+\\.\\d+\\.\\d+)(_.+)*(\\.so)"

    invoke-virtual {p2, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method
