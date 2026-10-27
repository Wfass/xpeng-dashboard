.class Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$LambdaSetterInfo;
.super Ljava/lang/Object;
.source "ObjectReaderCreator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/reader/ObjectReaderCreator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "LambdaSetterInfo"
.end annotation


# instance fields
.field final fieldClass:Ljava/lang/Class;

.field final invokedType:Ljava/lang/invoke/MethodType;

.field final methodType:Ljava/lang/invoke/MethodType;

.field final sameMethodMethod:Ljava/lang/invoke/MethodType;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 4

    .line 96
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 97
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$LambdaSetterInfo;->fieldClass:Ljava/lang/Class;

    .line 98
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    const-class v1, Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object v0

    iput-object v0, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$LambdaSetterInfo;->sameMethodMethod:Ljava/lang/invoke/MethodType;

    .line 99
    sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;

    invoke-static {v0, p1}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$LambdaSetterInfo;->methodType:Ljava/lang/invoke/MethodType;

    .line 100
    invoke-static {p2}, Ljava/lang/invoke/MethodType;->methodType(Ljava/lang/Class;)Ljava/lang/invoke/MethodType;

    move-result-object p1

    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreator$LambdaSetterInfo;->invokedType:Ljava/lang/invoke/MethodType;

    return-void
.end method
