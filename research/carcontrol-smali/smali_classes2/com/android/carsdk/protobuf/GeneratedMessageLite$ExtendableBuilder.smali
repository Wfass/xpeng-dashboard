.class public abstract Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;
.super Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
.source "GeneratedMessageLite.java"

# interfaces
.implements Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/carsdk/protobuf/GeneratedMessageLite;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ExtendableBuilder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<MessageType:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage<",
        "TMessageType;TBuilderType;>;BuilderType:",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder<",
        "TMessageType;TBuilderType;>;>",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder<",
        "TMessageType;TBuilderType;>;",
        "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessageOrBuilder<",
        "TMessageType;TBuilderType;>;"
    }
.end annotation


# direct methods
.method protected constructor <init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TMessageType;)V"
        }
    .end annotation

    .line 736
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;-><init>(Lcom/android/carsdk/protobuf/GeneratedMessageLite;)V

    .line 742
    iget-object p1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/FieldSet;->clone()Lcom/android/carsdk/protobuf/FieldSet;

    move-result-object v0

    iput-object v0, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    return-void
.end method

.method private verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension<",
            "TMessageType;*>;)V"
        }
    .end annotation

    .line 773
    invoke-virtual {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->getContainingTypeDefaultInstance()Lcom/android/carsdk/protobuf/MessageLite;

    move-result-object p1

    .line 774
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->getDefaultInstanceForType()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    if-ne p1, v0, :cond_0

    return-void

    .line 776
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "This extension is for a different message type.  Please make sure that you are not suppressing any generics type warnings."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final addExtension(Lcom/android/carsdk/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 850
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 852
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 853
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 854
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 855
    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 854
    invoke-virtual {v0, v1, p1}, Lcom/android/carsdk/protobuf/FieldSet;->addRepeatedField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method

.method public final buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TMessageType;"
        }
    .end annotation

    .line 763
    iget-boolean v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->isBuilt:Z

    if-eqz v0, :cond_0

    .line 764
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0

    .line 767
    :cond_0
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v0}, Lcom/android/carsdk/protobuf/FieldSet;->makeImmutable()V

    .line 768
    invoke-super {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic buildPartial()Lcom/android/carsdk/protobuf/MessageLite;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->buildPartial()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    move-result-object v0

    return-object v0
.end method

.method public final clearExtension(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;*>;)TBuilderType;"
        }
    .end annotation

    .line 862
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 864
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 865
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 866
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object p1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/FieldSet;->clearField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;)V

    return-object p0
.end method

.method public bridge synthetic clone()Lcom/android/carsdk/protobuf/AbstractMessageLite$Builder;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TBuilderType;"
        }
    .end annotation

    .line 815
    invoke-super {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;

    move-result-object v0

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;

    return-object v0
.end method

.method public bridge synthetic clone()Lcom/android/carsdk/protobuf/MessageLite$Builder;
    .locals 1

    .line 729
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic clone()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/CloneNotSupportedException;
        }
    .end annotation

    .line 729
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->clone()Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;

    move-result-object v0

    return-object v0
.end method

.method protected copyOnWrite()V
    .locals 2

    .line 753
    iget-boolean v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->isBuilt:Z

    if-nez v0, :cond_0

    return-void

    .line 757
    :cond_0
    invoke-super {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$Builder;->copyOnWrite()V

    .line 758
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v1, v1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    invoke-virtual {v1}, Lcom/android/carsdk/protobuf/FieldSet;->clone()Lcom/android/carsdk/protobuf/FieldSet;

    move-result-object v1

    iput-object v1, v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    return-void
.end method

.method public final getExtension(Lcom/android/carsdk/protobuf/ExtensionLite;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)TType;"
        }
    .end annotation

    .line 799
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/android/carsdk/protobuf/ExtensionLite;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtension(Lcom/android/carsdk/protobuf/ExtensionLite;I)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;I)TType;"
        }
    .end annotation

    .line 807
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtension(Lcom/android/carsdk/protobuf/ExtensionLite;I)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final getExtensionCount(Lcom/android/carsdk/protobuf/ExtensionLite;)I
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;)I"
        }
    .end annotation

    .line 792
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->getExtensionCount(Lcom/android/carsdk/protobuf/ExtensionLite;)I

    move-result p1

    return p1
.end method

.method public final hasExtension(Lcom/android/carsdk/protobuf/ExtensionLite;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;TType;>;)Z"
        }
    .end annotation

    .line 785
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    invoke-virtual {v0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->hasExtension(Lcom/android/carsdk/protobuf/ExtensionLite;)Z

    move-result p1

    return p1
.end method

.method internalSetExtensionSet(Lcom/android/carsdk/protobuf/FieldSet;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/carsdk/protobuf/FieldSet<",
            "Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;",
            ">;)V"
        }
    .end annotation

    .line 747
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 748
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iput-object p1, v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    return-void
.end method

.method public final setExtension(Lcom/android/carsdk/protobuf/ExtensionLite;ILjava/lang/Object;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;",
            "Ljava/util/List<",
            "TType;>;>;ITType;)TBuilderType;"
        }
    .end annotation

    .line 836
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 838
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 839
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 840
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    .line 841
    invoke-virtual {p1, p3}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->singularToFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    .line 840
    invoke-virtual {v0, v1, p2, p1}, Lcom/android/carsdk/protobuf/FieldSet;->setRepeatedField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;ILjava/lang/Object;)V

    return-object p0
.end method

.method public final setExtension(Lcom/android/carsdk/protobuf/ExtensionLite;Ljava/lang/Object;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<Type:",
            "Ljava/lang/Object;",
            ">(",
            "Lcom/android/carsdk/protobuf/ExtensionLite<",
            "TMessageType;TType;>;TType;)TBuilderType;"
        }
    .end annotation

    .line 823
    invoke-static {p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite;->access$200(Lcom/android/carsdk/protobuf/ExtensionLite;)Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;

    move-result-object p1

    .line 825
    invoke-direct {p0, p1}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->verifyExtensionContainingType(Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;)V

    .line 826
    invoke-virtual {p0}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->copyOnWrite()V

    .line 827
    iget-object v0, p0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableBuilder;->instance:Lcom/android/carsdk/protobuf/GeneratedMessageLite;

    check-cast v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;

    iget-object v0, v0, Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtendableMessage;->extensions:Lcom/android/carsdk/protobuf/FieldSet;

    iget-object v1, p1, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->descriptor:Lcom/android/carsdk/protobuf/GeneratedMessageLite$ExtensionDescriptor;

    invoke-virtual {p1, p2}, Lcom/android/carsdk/protobuf/GeneratedMessageLite$GeneratedExtension;->toFieldSetType(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lcom/android/carsdk/protobuf/FieldSet;->setField(Lcom/android/carsdk/protobuf/FieldSet$FieldDescriptorLite;Ljava/lang/Object;)V

    return-object p0
.end method
