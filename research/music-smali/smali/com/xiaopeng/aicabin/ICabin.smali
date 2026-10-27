.class public interface abstract Lcom/xiaopeng/aicabin/ICabin;
.super Ljava/lang/Object;
.source "ICabin.java"


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Lcom/xiaopeng/aicabin/logic/LogicImpl;

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/xiaopeng/aicabin/logic/LogicImpl;

    if-nez v0, :cond_0

    const-string v0, "NULLAnnotation"

    goto :goto_0

    .line 6
    :cond_0
    invoke-interface {v0}, Lcom/xiaopeng/aicabin/logic/LogicImpl;->name()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public abstract onCreate(Landroid/app/Application;)V
.end method

.method public string()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-interface {p0}, Lcom/xiaopeng/aicabin/ICabin;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
