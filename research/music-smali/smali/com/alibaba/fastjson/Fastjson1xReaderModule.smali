.class public Lcom/alibaba/fastjson/Fastjson1xReaderModule;
.super Ljava/lang/Object;
.source "Fastjson1xReaderModule.java"

# interfaces
.implements Lsm;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/alibaba/fastjson/Fastjson1xReaderModule$JSONImpl;
    }
.end annotation


# instance fields
.field final provider:Lzx;


# direct methods
.method public constructor <init>(Lzx;)V
    .locals 0

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    iput-object p1, p0, Lcom/alibaba/fastjson/Fastjson1xReaderModule;->provider:Lzx;

    return-void
.end method


# virtual methods
.method public getObjectReader(Lzx;Ljava/lang/reflect/Type;)Lwk;
    .locals 0

    .line 22
    const-class p1, Lcom/alibaba/fastjson/JSON;

    if-ne p2, p1, :cond_0

    .line 23
    new-instance p1, Lcom/alibaba/fastjson/Fastjson1xReaderModule$JSONImpl;

    invoke-direct {p1}, Lcom/alibaba/fastjson/Fastjson1xReaderModule$JSONImpl;-><init>()V

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
