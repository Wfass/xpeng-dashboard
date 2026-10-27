.class Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;
.super Ljava/lang/Object;
.source "ObjectWriterCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/writer/ObjectWriterCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LambdaInfo"
.end annotation


# instance fields
.field final fieldClass:Ljava/lang/Class;

.field final invokedType:Ljava/lang/invoke/MethodType;

.field final methodName:Ljava/lang/String;

.field final methodType:Ljava/lang/invoke/MethodType;

.field final samMethodType:Ljava/lang/invoke/MethodType;

.field final supplierClass:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .line 1163
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1164
    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->fieldClass:Ljava/lang/Class;

    .line 1165
    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->supplierClass:Ljava/lang/Class;

    .line 1166
    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->methodName:Ljava/lang/String;

    .line 1167
    invoke-static {p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p3

    iput-object p3, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->methodType:Ljava/lang/invoke/MethodType;

    .line 1168
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p2

    iput-object p2, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->invokedType:Ljava/lang/invoke/MethodType;

    .line 1169
    const-class p2, Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/writer/ObjectWriterCreator$LambdaInfo;->samMethodType:Ljava/lang/invoke/MethodType;

    return-void
.end method
