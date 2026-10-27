.class public Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;
.super Ljava/lang/Object;
.source "DiffMatchPatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "LinesToCharsResult"
.end annotation


# instance fields
.field protected chars1:Ljava/lang/String;

.field protected chars2:Ljava/lang/String;

.field protected lineArray:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->chars1:Ljava/lang/String;

    .line 60
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->chars2:Ljava/lang/String;

    .line 61
    iput-object p3, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$LinesToCharsResult;->lineArray:Ljava/util/List;

    return-void
.end method
