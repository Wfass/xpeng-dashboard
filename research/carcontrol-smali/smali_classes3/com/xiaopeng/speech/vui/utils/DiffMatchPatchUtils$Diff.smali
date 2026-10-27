.class public Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;
.super Ljava/lang/Object;
.source "DiffMatchPatchUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Diff"
.end annotation


# instance fields
.field public operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;Ljava/lang/String;)V
    .locals 0

    .line 2291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2293
    iput-object p1, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    .line 2294
    iput-object p2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    .line 2332
    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    .line 2335
    :cond_2
    check-cast p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;

    .line 2336
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    iget-object v3, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    if-eq v2, v3, :cond_3

    return v1

    .line 2339
    :cond_3
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    if-nez v2, :cond_4

    .line 2340
    iget-object p1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    if-eqz p1, :cond_5

    return v1

    .line 2343
    :cond_4
    iget-object p1, p1, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 3

    .line 2314
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    invoke-virtual {v0}, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;->hashCode()I

    move-result v0

    .line 2315
    :goto_0
    iget-object v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_1
    mul-int/lit8 v1, v1, 0x1f

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 2302
    iget-object v0, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->text:Ljava/lang/String;

    const/16 v1, 0xa

    const/16 v2, 0xb6

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    .line 2303
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Diff("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Diff;->operation:Lcom/xiaopeng/speech/vui/utils/DiffMatchPatchUtils$Operation;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ",\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
