.class Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM$FieldReaderInfo;
.super Ljava/lang/Object;
.source "ObjectReaderCreatorASM.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "FieldReaderInfo"
.end annotation


# instance fields
.field final acceptDesc:Ljava/lang/String;

.field final interfaceDesc:Ljava/lang/String;

.field final loadCode:I

.field final readMethodDesc:Ljava/lang/String;

.field final readMethodName:Ljava/lang/String;

.field final setterDesc:Ljava/lang/String;

.field final storeCode:I


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 0

    .line 191
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    iput-object p1, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM$FieldReaderInfo;->interfaceDesc:Ljava/lang/String;

    .line 193
    iput-object p2, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM$FieldReaderInfo;->acceptDesc:Ljava/lang/String;

    .line 194
    iput-object p3, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM$FieldReaderInfo;->setterDesc:Ljava/lang/String;

    .line 195
    iput p4, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM$FieldReaderInfo;->loadCode:I

    .line 196
    iput-object p5, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM$FieldReaderInfo;->readMethodName:Ljava/lang/String;

    .line 197
    iput-object p6, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM$FieldReaderInfo;->readMethodDesc:Ljava/lang/String;

    .line 198
    iput p7, p0, Lcom/alibaba/fastjson2/reader/ObjectReaderCreatorASM$FieldReaderInfo;->storeCode:I

    return-void
.end method
