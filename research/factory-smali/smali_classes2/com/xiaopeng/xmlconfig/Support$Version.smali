.class public Lcom/xiaopeng/xmlconfig/Support$Version;
.super Ljava/lang/Object;
.source "Support.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/xmlconfig/Support;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Version"
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "Version"

.field public static final XML_DOCUMENT:Ljava/lang/String; = "XML_DOCUMENT"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getString(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "id"    # Ljava/lang/String;

    .line 17
    const-string v0, "value"

    invoke-static {p0, v0}, Lcom/xiaopeng/xmlconfig/Support$Values;->access$000(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
